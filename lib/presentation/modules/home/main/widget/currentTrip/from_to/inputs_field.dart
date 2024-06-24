import 'package:wasla_driver/app/shared/common/common_libs.dart';
import 'package:wasla_driver/presentation/modules/home/main/cubit/current_trip_cubit.dart';
import 'package:wasla_driver/presentation/widgets/section/section_decoration.dart';

class FromToInputsFieldsCurrentTrip extends StatefulWidget {
  const FromToInputsFieldsCurrentTrip({
    super.key,
  });

  @override
  State<FromToInputsFieldsCurrentTrip> createState() =>
      _FromToInputsFieldsCurrentTripState();
}

class _FromToInputsFieldsCurrentTripState
    extends State<FromToInputsFieldsCurrentTrip>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<Offset> _fromAnimation;
  late Animation<Offset> _toAnimation;

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
    return BlocBuilder<CurrentTripCubit, CurrentTripState>(
      builder: (context, state) {
        return state.maybeWhen(
            orElse: () => SizedBox(),
            getCurrentTripSuccess: (currentTrip) => Row(
                  children: [
                    Expanded(
                        child: SlideTransition(
                      position: isArabic ? _fromAnimation : _toAnimation,
                      child: buildStationButton(
                          stationName:
                              currentTrip!.startStation!.name.orEmpty()),
                    )),
                    IconButton(
                        onPressed: () {},
                        icon: AppSvg(
                          path: AssetsProvider.flipIcon,
                          height: 30.sp,
                          color: ColorsManager.tealPrimary300,
                        )),
                    Expanded(
                        child: SlideTransition(
                      position: isArabic ? _toAnimation : _fromAnimation,
                      child: buildStationButton(
                          stationName: currentTrip!.endStation!.name.orEmpty()),
                    )),
                  ],
                ));
      },
    );
  }

  Widget buildStationButton({required String stationName}) {
    return Container(
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
    );
  }

  void _dispose() {
    _animationController.dispose();
  }
}
