part of 'get_vehicle_cubit.dart';

@freezed
class GetVehicleState with _$GetVehicleState {
  const factory GetVehicleState.initial() = _Initial;
  const factory GetVehicleState.loading() = _loading;
  const factory GetVehicleState.getVehicleSuccess(
      {required PublicDriverVehicleModel vehicleModel}) = _getVehicleSuccess;

  const factory GetVehicleState.notHaveVehicle() = _notHaveVehicle;
  const factory GetVehicleState.getVehicleFailure({required String message}) =
      _getVehicleFailure;
}
