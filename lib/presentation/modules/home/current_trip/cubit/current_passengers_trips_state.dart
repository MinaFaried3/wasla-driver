part of 'current_passengers_trips_cubit.dart';

@freezed
class CurrentPassengersTripsState with _$CurrentPassengersTripsState {
  const factory CurrentPassengersTripsState.initial() = _Initial;
  const factory CurrentPassengersTripsState.loading() = _loading;
  const factory CurrentPassengersTripsState.currentPassengersTripsFailure(
      {required String message}) = _currentPassengersTripsFailure;
  const factory CurrentPassengersTripsState.currentPassengersTripsSuccess(
          {required List<CurrentPassengersTripsModel> passengers}) =
      _currentPassengersTripsSuccess;
}
