import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wasla_driver/app/services/di/dependency_injection.dart';
import 'package:wasla_driver/app/wasla.dart';
import 'package:wasla_driver/data/source/public_driver_repository.dart';
import 'package:wasla_driver/models/CurrentTripDetailsResponse.dart';

part 'current_trip_details_cubit.freezed.dart';
part 'current_trip_details_state.dart';

class CurrentTripDetailsCubit extends Cubit<CurrentTripDetailsState> {
  CurrentTripDetailsCubit() : super(const CurrentTripDetailsState.initial());
  final PublicDriverRepository remoteDataSource =
      getIt<PublicDriverRepository>();

  void getCurrentTripDetails() async {
    emit(CurrentTripDetailsState.loading());

    final result = await remoteDataSource.getCurrentTripDetails();
    result.fold(
        (l) => emit(CurrentTripDetailsState.currentTripDetailsFailure(
            message: l.message)),
        (r) => emit(CurrentTripDetailsState.currentTripDetailsSuccess(
            currentTripDetailsModel: r)));
    currentTripCubit.getCurrentTrip();
  }

  void backToInitial() {
    emit(CurrentTripDetailsState.initial());
  }
}
