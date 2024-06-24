part of 'create_trip_cubit.dart';

@freezed
class CreateTripState with _$CreateTripState {
  const factory CreateTripState.initial() = _Initial;
  const factory CreateTripState.loading() = _loading;
  const factory CreateTripState.createTripSuccess() = _createTripSuccess;
  const factory CreateTripState.createTripError({required String message}) =
      _createTripError;
}
