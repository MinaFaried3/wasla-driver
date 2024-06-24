import 'package:wasla_driver/app/shared/common/common_libs.dart';
import 'package:wasla_driver/models/StationsResponse.dart';
import 'package:wasla_driver/presentation/modules/home/main/cubit/create_trip_cubit.dart';
import 'package:wasla_driver/presentation/modules/home/main/cubit/main_home_cubit.dart';
import 'package:wasla_driver/presentation/widgets/retry.dart';
import 'package:wasla_driver/presentation/widgets/section/section_decoration.dart';

class FromToInputsFields extends StatefulWidget {
  const FromToInputsFields({
    super.key,
  });

  @override
  State<FromToInputsFields> createState() => _FromToInputsFieldsState();
}

class _FromToInputsFieldsState extends State<FromToInputsFields>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<Offset> _fromAnimation;
  late Animation<Offset> _toAnimation;
  Station? from, to;

  String fromStationName = AppStrings.from.tr();
  String toStationName = AppStrings.to.tr();

  @override
  void initState() {
    super.initState();

    _animationController =
        AnimationController(vsync: this, duration: DurationManager.s6);
    _fromAnimation =
        Tween<Offset>(begin: const Offset(1.0, 0.0), end: Offset.zero).animate(
            CurvedAnimation(
                parent: _animationController, curve: Curves.easeInOut));
    _toAnimation =
        Tween<Offset>(begin: const Offset(-1.0, 0.0), end: Offset.zero).animate(
            CurvedAnimation(
                parent: _animationController, curve: Curves.easeInOut));

    _animationController.forward();
  }

  @override
  void dispose() {
    _dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final isArabic =
        Localizations.localeOf(context) == LocalizationManager.arabicLocal;
    return Row(
      children: [
        Expanded(
            child: SlideTransition(
          position: isArabic ? _fromAnimation : _toAnimation,
          child: buildStationButton(
              onPressed: () {
                _showModalBottomSheet(isFrom: true);
              },
              stationName: fromStationName),
        )),
        IconButton(
            onPressed: flipOnPressed,
            icon: AppSvg(
              path: AssetsProvider.flipIcon,
              height: 30.sp,
              color: ColorsManager.tealPrimary300,
            )),
        Expanded(
            child: SlideTransition(
          position: isArabic ? _toAnimation : _fromAnimation,
          child: buildStationButton(
              onPressed: () {
                _showModalBottomSheet(isFrom: false);
              },
              stationName: toStationName),
        )),
      ],
    );
  }

  void _showModalBottomSheet({required bool isFrom}) {
    context.read<MainHomeCubit>().getStations();
    Scaffold.of(context).showBottomSheet((context) {
      return BlocBuilder<MainHomeCubit, MainHomeState>(
        builder: (context, state) {
          return Container(
            padding: EdgeInsets.only(top: 50, left: 20, right: 20),
            height: 500.h,
            decoration: const BoxDecoration(
                color: ColorsManager.tealPrimary1000,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                )),
            child: state.maybeWhen(
                loading: () => const LoadingIndicator(),
                getStationError: (message) => Retry(
                    onPressed: () => context.read<MainHomeCubit>().getStations,
                    text: message),
                getStationsSuccess: (stations) => ListView.separated(
                    itemBuilder: (context, index) => GestureDetector(
                          onTap: () {
                            setState(() {
                              if (isFrom) {
                                from = stations[index];
                                fromStationName = from!.name.orEmpty();
                                context
                                    .read<CreateTripCubit>()
                                    .updateFromStation(from!);
                              } else {
                                to = stations[index];
                                toStationName = to!.name.orEmpty();
                                context
                                    .read<CreateTripCubit>()
                                    .updateToStation(to!);
                              }
                            });
                            context.pop();
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              stations[index].name.orEmpty(),
                              style: getSemiBoldStyle(fontSize: 20.sp),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                    separatorBuilder: (context, index) => Container(
                          margin: EdgeInsets.symmetric(horizontal: 50),
                          color: ColorsManager.tealPrimary,
                          height: 1,
                        ),
                    itemCount: stations.length),
                orElse: () => SizedBox.shrink()),
          );
        },
      );
    });
  }

  Widget buildStationButton(
      {required String stationName, required VoidCallback onPressed}) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 8),
        decoration: buildSectionDecoration(
          color: ColorsManager.tealPrimary1000,
        ),
        child: Center(
          child: Text(
            stationName,
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }

  void _dispose() {
    _animationController.dispose();
  }

  void flipOnPressed() {
    setState(() {
      if (from != null && to != null) {
        Station? temp = from;
        from = to;
        to = temp;
        String tempName = fromStationName;
        fromStationName = toStationName;
        toStationName = tempName;
        context.read<CreateTripCubit>().updateToStation(to!);
        context.read<CreateTripCubit>().updateFromStation(from!);
      }
    });
  }

  void _focusNextField(
      BuildContext context, FocusNode currentFocus, FocusNode nextFocus) {
    currentFocus.unfocus(); // Hide the keyboard
    FocusScope.of(context)
        .requestFocus(nextFocus); // Move focus to the next field
  }
}
