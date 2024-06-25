import 'package:wasla_driver/app/shared/common/common_libs.dart';
import 'package:wasla_driver/data/requests/create_vehicle_request.dart';

part 'create_vehicle_cubit.freezed.dart';
part 'create_vehicle_state.dart';

class CreateVehicleCubit extends Cubit<CreateVehicleState> {
  CreateVehicleCubit() : super(const CreateVehicleState.initial());
  final PublicDriverRepository repository = getIt<PublicDriverRepository>();

  void createVehicle(
      {required CreateVehicleRequest createVehicleRequest}) async {
    emit(const CreateVehicleState.loading());

    final result = await repository.createPublicDriverVehicle(
        createVehicleRequest: createVehicleRequest);
    result.fold(
        (l) =>
            emit(CreateVehicleState.createVehicleFailure(message: l.message)),
        (r) => emit(CreateVehicleState.createVehicleSuccess(
              message: r.message.orEmpty(),
            )));
  }
}
