part of 'current_trip_details_cubit.dart';

@freezed
class CurrentTripDetailsState with _$CurrentTripDetailsState {
  const factory CurrentTripDetailsState.initial() = _Initial;
  const factory CurrentTripDetailsState.loading() = _loading;
  const factory CurrentTripDetailsState.currentTripDetailsFailure(
      {required String message}) = _currentTripDetailsFailure;
  const factory CurrentTripDetailsState.currentTripDetailsSuccess(
          {required CurrentTripDetailsModel currentTripDetailsModel}) =
      _currentTripDetailsSuccess;
}
