import 'package:wasla_driver/app/shared/common/common_libs.dart';
import 'package:wasla_driver/models/PublicDriverVehicleResponse.dart';

part 'get_vehicle_cubit.freezed.dart';
part 'get_vehicle_state.dart';

class GetVehicleCubit extends Cubit<GetVehicleState> {
  GetVehicleCubit() : super(const GetVehicleState.initial());
  final PublicDriverRepository repository = getIt<PublicDriverRepository>();

  void getVehicle() async {
    emit(const GetVehicleState.loading());

    final result = await repository.getPublicDriverVehicle();
    result.fold(
        (l) => emit(GetVehicleState.getVehicleFailure(message: l.message)),
        (r) {
      if (r == null) {
        emit(const GetVehicleState.notHaveVehicle());
      } else {
        emit(GetVehicleState.getVehicleSuccess(vehicleModel: r));
      }
    });
  }
}
