part of 'create_vehicle_cubit.dart';

@freezed
class CreateVehicleState with _$CreateVehicleState {
  const factory CreateVehicleState.initial() = _Initial;
  const factory CreateVehicleState.loading() = _loading;
  const factory CreateVehicleState.createVehicleSuccess(
      {required String message}) = _createVehicleSuccess;
  const factory CreateVehicleState.createVehicleFailure(
      {required String message}) = _createVehicleFailure;
}
