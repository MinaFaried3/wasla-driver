part of 'trips_history_cubit.dart';

@freezed
class TripsHistoryState with _$TripsHistoryState {
  const factory TripsHistoryState.initial() = _Initial;

  const factory TripsHistoryState.loading() = _loading;

  const factory TripsHistoryState.getTripsHistoryFailure(
      {required String message}) = _getTripsHistoryFailure;

  const factory TripsHistoryState.getTripsHistorySuccess(
      {required List<TripHistoryModel> trips}) = _getTripsHistorySuccess;

  const factory TripsHistoryState.getTripsHistoryByDateSuccess(
          {required List<TripHistoryByDateModel> trips}) =
      _getTripsHistoryByDateSuccess;
}
