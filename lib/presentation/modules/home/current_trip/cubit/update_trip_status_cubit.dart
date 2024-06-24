import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wasla_driver/app/services/di/dependency_injection.dart';
import 'package:wasla_driver/data/source/public_driver_repository.dart';

part 'update_trip_status_cubit.freezed.dart';
part 'update_trip_status_state.dart';

class UpdateTripStatusCubit extends Cubit<UpdateTripStatusState> {
  UpdateTripStatusCubit() : super(const UpdateTripStatusState.initial());

  final PublicDriverRepository remoteDataSource =
      getIt<PublicDriverRepository>();

  void updateTripStatus(
      {required String tripId, required String status}) async {
    emit(UpdateTripStatusState.loading());

    final result =
        await remoteDataSource.updateTripStatus(status: status, tripId: tripId);
    result.fold(
        (l) => emit(
            UpdateTripStatusState.updateTripStatusFailure(message: l.message)),
        (r) => emit(UpdateTripStatusState.updateTripStatusSuccess()));
  }

  void backToInitial() {
    emit(UpdateTripStatusState.initial());
  }
}
