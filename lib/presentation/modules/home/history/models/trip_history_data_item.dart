import 'package:wasla_driver/app/shared/common/common_libs.dart';
import 'package:wasla_driver/app/shared/enums/trip_status.dart';
import 'package:wasla_driver/app/shared/helper_functions.dart';
import 'package:wasla_driver/models/TripHistoryByDateResponse.dart';
import 'package:wasla_driver/models/TripHistoryResponse.dart';

final class TripHistoryItemModel extends Equatable {
  final String startStationName;
  final String endStationName;
  final String startTime;
  final String endTime;
  final String startDate;
  final String tripStatus;

  factory TripHistoryItemModel.fromTripHistoryModel(
          {required TripHistoryModel trip}) =>
      TripHistoryItemModel(
        startStationName: trip.startStation!.name.orEmpty(),
        endStationName: trip.endStation!.name.orEmpty(),
        startTime: getFormattedTimeFromString(trip.startDate.orEmpty()),
        endTime: getFormattedTimeFromString(trip.endDate.orEmpty()),
        startDate: getFormattedDateFromString(trip.startDate.orEmpty()),
        tripStatus: getStringTripStatus(trip.status ?? 0),
      );

  factory TripHistoryItemModel.fromTripHistoryByDateModel(
          {required TripHistoryByDateModel trip}) =>
      TripHistoryItemModel(
        startStationName: trip.startStation.orEmpty(),
        endStationName: trip.endStation.orEmpty(),
        startTime: trip.tripStartTime.orEmpty(),
        endTime: trip.tripEndTime.toString().orEmpty(),
        startDate: getFormattedDateFromString(
            reformatDate(cleanDate(trip.tripDate.orEmpty()))),
        tripStatus: getStringTripStatus(3),
      );

  const TripHistoryItemModel(
      {required this.startStationName,
      required this.endStationName,
      required this.startTime,
      required this.endTime,
      required this.startDate,
      required this.tripStatus});

  @override
  List<Object> get props => [
        startStationName,
        endStationName,
        startTime,
        endTime,
        tripStatus,
      ];
}
