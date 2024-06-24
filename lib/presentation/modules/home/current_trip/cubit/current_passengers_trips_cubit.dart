import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wasla_driver/app/services/di/dependency_injection.dart';
import 'package:wasla_driver/data/source/public_driver_repository.dart';
import 'package:wasla_driver/models/CurrentPassengersTrips.dart';

part 'current_passengers_trips_cubit.freezed.dart';
part 'current_passengers_trips_state.dart';

class CurrentPassengersTripsCubit extends Cubit<CurrentPassengersTripsState> {
  CurrentPassengersTripsCubit()
      : super(const CurrentPassengersTripsState.initial());
  final PublicDriverRepository remoteDataSource =
      getIt<PublicDriverRepository>();

  void getCurrentPassengers(String tripId) async {
    emit(CurrentPassengersTripsState.loading());

    final result =
        await remoteDataSource.getCurrentTripPassengers(tripId: tripId);
    result.fold(
        (l) => emit(CurrentPassengersTripsState.currentPassengersTripsFailure(
            message: l.message)),
        (r) => emit(CurrentPassengersTripsState.currentPassengersTripsSuccess(
            passengers: r)));
    // currentTripCubit.getCurrentTrip();
  }

  void backToInitial() {
    emit(CurrentPassengersTripsState.initial());
  }
}
