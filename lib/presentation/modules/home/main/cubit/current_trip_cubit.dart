import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wasla_driver/app/services/di/dependency_injection.dart';
import 'package:wasla_driver/data/source/public_driver_repository.dart';
import 'package:wasla_driver/models/CurrentTripResponse.dart';

part 'current_trip_cubit.freezed.dart';
part 'current_trip_state.dart';

class CurrentTripCubit extends Cubit<CurrentTripState> {
  CurrentTripCubit() : super(const CurrentTripState.initial());
  final PublicDriverRepository remoteDataSource =
      getIt<PublicDriverRepository>();
  String? tripId;
  bool tripStarted = false;
  void getCurrentTrip() async {
    emit(CurrentTripState.loading());

    final result = await remoteDataSource.getCurrentTrip();
    result.fold(
        (l) => emit(CurrentTripState.getCurrentTripError(message: l.message)),
        (r) {
      if (r != null) {
        tripId = r.id.toString();
        tripStarted = r.isStart ?? false;
      }
      return emit(CurrentTripState.getCurrentTripSuccess(currentTrip: r));
    });
  }

  void backToInitial() {
    emit(CurrentTripState.initial());
  }

  void startTrip(String tripId) async {
    tripStarted = true;
    await remoteDataSource.startTrip(tripId: tripId);
    getCurrentTrip();
  }

  void endTrip(String tripId) async {
    tripStarted = false;
    this.tripId = null;
    await remoteDataSource.endTrip(tripId: tripId);
    getCurrentTrip();
  }
}
