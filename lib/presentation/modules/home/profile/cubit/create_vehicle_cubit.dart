import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_vehicle_state.dart';
part 'create_vehicle_cubit.freezed.dart';

class CreateVehicleCubit extends Cubit<CreateVehicleState> {
  CreateVehicleCubit() : super(const CreateVehicleState.initial());
}
