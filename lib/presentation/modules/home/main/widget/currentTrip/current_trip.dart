import 'package:wasla_driver/app/shared/common/common_libs.dart';
import 'package:wasla_driver/app/shared/enums/trip_status.dart';
import 'package:wasla_driver/generated/app_image.dart';
import 'package:wasla_driver/presentation/modules/home/main/cubit/current_trip_cubit.dart';
import 'package:wasla_driver/presentation/modules/home/main/widget/currentTrip/from_to/from_to_inputs_section.dart';
import 'package:wasla_driver/presentation/widgets/section/section_decoration.dart';

class CurrentTripContent extends StatefulWidget {
  const CurrentTripContent({
    super.key,
  });

  @override
  State<CurrentTripContent> createState() => _CurrentTripContentState();
}

class _CurrentTripContentState extends State<CurrentTripContent>
    with SingleTickerProviderStateMixin {
  late final AnimationController animationController;
  late final Animation<Offset> slideAnimation;

  @override
  void initState() {
    super.initState();
    animationController =
        AnimationController(vsync: this, duration: DurationManager.s4);
    slideAnimation = Tween<Offset>(begin: const Offset(1, 0), end: Offset.zero)
        .animate(CurvedAnimation(
      parent: animationController,
      curve: Curves.easeInOutBack,
    ));

    animationController.forward();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: slideAnimation,
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.only(right: 10, left: 10, top: 10),
        decoration:
            buildSectionDecoration(color: ColorsManager.darkTealBackground3),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            FromToInputsSectionCurrentTrip(),
            VerticalSpace(15),
            buildTripDateTimePickeres(),
            VerticalSpace(15),
            VerticalSpace(15),
            BlocBuilder<CurrentTripCubit, CurrentTripState>(
              builder: (context, state) {
                return state.maybeWhen(
                    orElse: () => SizedBox(),
                    getCurrentTripSuccess: (currentTrip) => currentTrip!
                            .isActive!
                        ? Row(
                            children: [
                              AppButton(
                                  height: 30,
                                  width: 140,
                                  text: AppStrings.startTrip.tr(),
                                  onPressed: () {
                                    context
                                        .read<CurrentTripCubit>()
                                        .startTrip(currentTrip.id.toString());
                                  }),
                              Spacer(),
                              AppButton(
                                  height: 30,
                                  fontColor: ColorsManager.offWhite,
                                  backgroundColor: ColorsManager.red900,
                                  width: 140,
                                  text: 'الغاء الرحلة',
                                  onPressed: () {
                                    context
                                        .read<CurrentTripCubit>()
                                        .endTrip(currentTrip.id.toString());
                                  })
                            ],
                          )
                        : AppButton(
                            height: 30,
                            fontColor: ColorsManager.offWhite,
                            backgroundColor: ColorsManager.red900,
                            width: 140,
                            text: 'انهاء الرحلة',
                            onPressed: () {
                              context
                                  .read<CurrentTripCubit>()
                                  .endTrip(currentTrip.id.toString());
                            }));
              },
            ),
            VerticalSpace(10),
            BlocBuilder<CurrentTripCubit, CurrentTripState>(
              builder: (context, state) {
                return state.maybeWhen(
                    orElse: () => SizedBox(),
                    getCurrentTripSuccess: (currentTrip) => Center(
                          child: Container(
                            padding: EdgeInsets.all(8),
                            margin: EdgeInsets.symmetric(horizontal: 80),
                            decoration: BoxDecoration(
                              color: Theme.of(context).scaffoldBackgroundColor,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20),
                                  topRight: Radius.circular(20)),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                AppSvg(
                                  path: Assets.svgStatusIcon,
                                  height: 32,
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 8.0),
                                  child: Text(
                                    getStringTripStatus(
                                        currentTrip?.status ?? 0),
                                    style: getBoldStyle(),
                                  ),
                                ),
                                AppSvg(
                                  path: Assets.svgStatusIcon,
                                  height: 32,
                                ),
                              ],
                            ),
                          ),
                        ));
              },
            ),
          ],
        ),
      ),
    );
  }

  String getStringTripStatus(num i) {
    return TripStatus.values[i.toInt()].name;
  }

  Container buildTripDateTimePickeres() {
    return Container(
      padding: EdgeInsets.all(8),
      margin: EdgeInsets.symmetric(horizontal: 8),
      decoration: buildSectionDecoration(color: ColorsManager.offWhite),
      child: BlocBuilder<CurrentTripCubit, CurrentTripState>(
        builder: (context, state) {
          return state.maybeWhen(
              orElse: () => SizedBox(),
              getCurrentTripSuccess: (currentTrip) => Column(
                    children: [
                      buildPickerItem(
                        buttonName: AppStrings.tripStart.tr(),
                        dateTime: formatDate(currentTrip!.startDate.orEmpty()),
                      ),
                      buildPickerItem(
                        buttonName: AppStrings.tripEnd.tr(),
                        dateTime: formatDate(currentTrip!.endDate.orEmpty()),
                      ),
                    ],
                  ));
        },
      ),
    );
  }

  Row buildPickerItem({
    required String buttonName,
    required String dateTime,
  }) {
    return Row(
      children: [
        AppButton.dark(
          width: 100,
          fontSize: 14,
          height: 30,
          onPressed: () {},
          text: buttonName,
        ),
        HorizontalSpace(5),
        Flexible(
          child: Text(
            dateTime,
            style: getMediumStyle(color: ColorsManager.twine, fontSize: 18),
          ),
        )
      ],
    );
  }

  String _formatDateTimeForServer(DateTime dateTime) {
    final DateFormat formatter = DateFormat("yyyy-MM-ddTHH:mm:ss.SSS'Z'");
    PrintManager.print(formatter.format(dateTime.toUtc()));
    return formatter.format(dateTime.toUtc());
  }

  String _formatDateTimeForUx(DateTime? dateTime) {
    if (dateTime == null) return '';
    final DateFormat dateFormatter = DateFormat.yMMMMd().add_jm();

    return dateFormatter.format(dateTime);
  }

  String formatDate(String dateTimeString) {
    // Parse the input date time string
    DateTime dateTime = DateTime.parse(dateTimeString);

    // Define the date format
    DateFormat formatter = DateFormat.yMMMMd().add_jm();

    // Format the date time
    String formattedDate = formatter.format(dateTime);

    return formattedDate;
  }
}
