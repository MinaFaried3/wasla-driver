part of 'current_trip_cubit.dart';

@freezed
class CurrentTripState with _$CurrentTripState {
  const factory CurrentTripState.initial() = _Initial;
  const factory CurrentTripState.loading() = _loading;
  const factory CurrentTripState.getCurrentTripSuccess(
      {required CurrentTripModel? currentTrip}) = _getCurrentTripSuccess;
  const factory CurrentTripState.getCurrentTripError(
      {required String message}) = _getCurrentError;
}
