import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wasla_driver/app/services/di/dependency_injection.dart';
import 'package:wasla_driver/app/wasla.dart';
import 'package:wasla_driver/data/requests/CreatePublicTripRequest.dart';
import 'package:wasla_driver/data/source/public_driver_repository.dart';
import 'package:wasla_driver/models/StationsResponse.dart';

part 'create_trip_cubit.freezed.dart';
part 'create_trip_state.dart';

class CreateTripCubit extends Cubit<CreateTripState> {
  CreateTripCubit() : super(const CreateTripState.initial());
  final PublicDriverRepository remoteDataSource =
      getIt<PublicDriverRepository>();
  Station? from, to;
  void updateFromStation(Station station) {
    from = station;
  }

  void updateToStation(Station station) {
    to = station;
  }

  void createTrip({required String startTime, required String endTime}) async {
    if (from == null || to == null) return;
    emit(CreateTripState.loading());

    final result = await remoteDataSource.createTrip(
        createTrip: CreatePublicTripRequest(
            endDate: endTime,
            startDate: startTime,
            startStationId: from!.stationId,
            endStationId: to!.stationId));
    result.fold(
        (l) => emit(CreateTripState.createTripError(message: l.message)),
        (r) => emit(CreateTripState.createTripSuccess()));
    currentTripCubit.getCurrentTrip();
  }

  void backToInitial() {
    emit(CreateTripState.initial());
  }
}
