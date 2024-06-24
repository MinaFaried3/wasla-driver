part of 'update_trip_status_cubit.dart';

@freezed
class UpdateTripStatusState with _$UpdateTripStatusState {
  const factory UpdateTripStatusState.initial() = _Initial;
  const factory UpdateTripStatusState.loading() = _loading;
  const factory UpdateTripStatusState.updateTripStatusFailure(
      {required String message}) = _updateTripStatusFailure;
  const factory UpdateTripStatusState.updateTripStatusSuccess() =
      _updateTripStatusSuccess;
}
