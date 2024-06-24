import 'package:wasla_driver/app/shared/common/common_libs.dart';
import 'package:wasla_driver/app/shared/enums/trip_status.dart';
import 'package:wasla_driver/generated/app_image.dart';
import 'package:wasla_driver/presentation/modules/home/current_trip/cubit/current_passengers_trips_cubit.dart';
import 'package:wasla_driver/presentation/modules/home/current_trip/cubit/current_trip_details_cubit.dart';
import 'package:wasla_driver/presentation/modules/home/current_trip/cubit/update_trip_status_cubit.dart';
import 'package:wasla_driver/presentation/modules/home/current_trip/list_passenger_section.dart';
import 'package:wasla_driver/presentation/modules/home/current_trip/points_chart.dart';
import 'package:wasla_driver/presentation/modules/home/main/cubit/current_trip_cubit.dart';
import 'package:wasla_driver/presentation/widgets/section/section_decoration.dart';
import 'package:wasla_driver/presentation/widgets/section/section_with_tittle.dart';

class CurrentTripBody extends StatefulWidget {
  const CurrentTripBody({super.key});

  @override
  State<CurrentTripBody> createState() => _CurrentTripBodyState();
}

class _CurrentTripBodyState extends State<CurrentTripBody> {
  @override
  void initState() {
    super.initState();
    context.read<CurrentTripDetailsCubit>().getCurrentTripDetails();
    context.read<CurrentPassengersTripsCubit>().getCurrentPassengers(
        context.read<CurrentTripCubit>().tripId.orEmpty());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CurrentTripCubit, CurrentTripState>(
      builder: (context, state) {
        return state.maybeWhen(
            orElse: () => Center(
                  child: Text('لا توجد رحلة حالية'),
                ),
            getCurrentTripSuccess: (currentTrip) {
              if (currentTrip == null) {
                return Center(
                  child: Text('لا توجد رحلة حالية'),
                );
              }
              return SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: Column(
                  children: [
                    BlocBuilder<CurrentTripDetailsCubit,
                        CurrentTripDetailsState>(
                      builder: (context, state) {
                        return state.maybeWhen(
                            loading: () => LoadingIndicator(),
                            currentTripDetailsSuccess: (detailsModel) => Row(
                                  children: [
                                    SectionWithTitle(
                                      tittle: 'حالة الرحلة',
                                      iconPath: Assets.svgStatusIcon,
                                      content: BlocBuilder<
                                          UpdateTripStatusCubit,
                                          UpdateTripStatusState>(
                                        builder: (context, state) {
                                          return state.maybeWhen(
                                              loading: () => LoadingIndicator(),
                                              orElse: () => Container(
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                            vertical: 20,
                                                            horizontal: 10),
                                                    decoration:
                                                        buildSectionDecoration(
                                                            color: ColorsManager
                                                                .darkTealBackground3),
                                                    child: Column(
                                                      children: [
                                                        for (int i = 0;
                                                            i <
                                                                TripStatus
                                                                    .values
                                                                    .length;
                                                            i++)
                                                          if (detailsModel
                                                                  .status!
                                                                  .toInt() ==
                                                              i)
                                                            Padding(
                                                              padding:
                                                                  const EdgeInsets
                                                                      .all(8.0),
                                                              child: Container(
                                                                padding:
                                                                    EdgeInsets
                                                                        .all(
                                                                            10),
                                                                decoration: buildSectionDecoration(
                                                                    color: ColorsManager
                                                                        .offWhite300,
                                                                    radius: 15),
                                                                child: Text(
                                                                  getStringTripStatus(
                                                                      i),
                                                                  style: getMediumStyle(
                                                                      fontSize:
                                                                          20,
                                                                      color: ColorsManager
                                                                          .twine),
                                                                ),
                                                              ),
                                                            )
                                                          else
                                                            GestureDetector(
                                                              onTap: () {
                                                                context
                                                                    .read<
                                                                        UpdateTripStatusCubit>()
                                                                    .updateTripStatus(
                                                                        tripId: currentTrip
                                                                            .id
                                                                            .toString(),
                                                                        status:
                                                                            i.toString());
                                                                context
                                                                    .read<
                                                                        CurrentTripDetailsCubit>()
                                                                    .getCurrentTripDetails();
                                                                setState(() {});
                                                              },
                                                              child: Padding(
                                                                padding:
                                                                    const EdgeInsets
                                                                        .all(
                                                                        8.0),
                                                                child: Text(
                                                                  getStringTripStatus(
                                                                      i),
                                                                  style: getMediumStyle(
                                                                      fontSize:
                                                                          20),
                                                                ),
                                                              ),
                                                            ),
                                                      ],
                                                    ),
                                                  ));
                                        },
                                      ),
                                    ),
                                    Expanded(
                                      child: SectionWithTitle(
                                        tittle: 'عدد الركاب',
                                        iconPath: Assets.svgUserIcon,
                                        content: SizedBox(
                                          height: 300,
                                          child: PointsCharts(
                                              reserved: detailsModel
                                                  .reserverdSeats
                                                  .orZero(),
                                              total: 14),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                            orElse: () => SizedBox());
                      },
                    ),
                    BlocBuilder<CurrentPassengersTripsCubit,
                        CurrentPassengersTripsState>(
                      builder: (context, state) {
                        return state.maybeWhen(
                            loading: () => LoadingIndicator(),
                            currentPassengersTripsSuccess: (passengers) =>
                                PassengerListSection(
                                  tittle: 'الركاب',
                                  list: passengers,
                                ),
                            orElse: () => SizedBox());
                      },
                    )
                  ],
                ),
              );
            });
      },
    );
  }

  String getStringTripStatus(num i) {
    return TripStatus.values[i.toInt()].name;
  }
}
