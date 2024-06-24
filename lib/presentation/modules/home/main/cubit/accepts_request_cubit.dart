import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wasla_driver/app/services/di/dependency_injection.dart';
import 'package:wasla_driver/app/wasla.dart';
import 'package:wasla_driver/data/source/public_driver_repository.dart';

part 'accepts_request_cubit.freezed.dart';
part 'accepts_request_state.dart';

class AcceptsRequestCubit extends Cubit<AcceptsRequestState> {
  AcceptsRequestCubit() : super(const AcceptsRequestState.initial());

  final PublicDriverRepository remoteDataSource =
      getIt<PublicDriverRepository>();

  void acceptPassengerRequest(String reqeustId) async {
    emit(AcceptsRequestState.loading());

    final result =
        await remoteDataSource.acceptPassengerRequest(reqeustId: reqeustId);
    result.fold(
        (l) => emit(AcceptsRequestState.acceptRequestError(message: l.message)),
        (r) => emit(AcceptsRequestState.acceptRequestSuccess()));
    currentTripCubit.getCurrentTrip();
  }

  void backToInitial() {
    emit(AcceptsRequestState.initial());
  }
}
