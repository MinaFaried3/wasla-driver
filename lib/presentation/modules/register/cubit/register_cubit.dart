import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wasla_driver/data/requests/register_request.dart';
import 'package:wasla_driver/data/source/public_driver_repository.dart';
import 'package:wasla_driver/models/DriverResponse.dart';

part 'register_cubit.freezed.dart';
part 'register_state.dart';

class RegisterCubit extends Cubit<RegisterState> {
  final PublicDriverRepository remoteDataSource;
  RegisterCubit(this.remoteDataSource) : super(const RegisterState.initial());

  void register({required RegisterRequest registerRequest}) async {
    emit(const RegisterState.loading());
    final result = await remoteDataSource.registerAsPublicDriver(
        registerRequest: registerRequest);
    result.fold(
        (l) =>
            emit(RegisterState.registerPublicDriverFailure(message: l.message)),
        (r) => emit(
            RegisterState.registerPublicDriverSuccess(publicDriverModel: r)));
  }
}
