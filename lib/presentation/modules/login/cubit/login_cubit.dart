import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wasla_driver/app/shared/enums/roles.dart';
import 'package:wasla_driver/data/requests/LoginRequest.dart';
import 'package:wasla_driver/data/source/public_driver_repository.dart';
import 'package:wasla_driver/models/DriverResponse.dart';

part 'login_cubit.freezed.dart';
part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  final PublicDriverRepository remoteDataSource;
  LoginCubit({required this.remoteDataSource})
      : super(const LoginState.initial());

  void login({required LoginRequestBody loginRequestBody}) {
    emit(const LoginState.loading());
    if (loginRequestBody.role == Role.publicDriver.role) {
      loginAsPublicDriver(loginRequestBody: loginRequestBody);
    } else if (loginRequestBody.role == Role.ordDriver.role) {
      loginAsOrgDriver(loginRequestBody: loginRequestBody);
    } else {
      emit(const LoginState.loginFailure(message: "role not valid"));
    }
  }

  void loginAsPublicDriver({required LoginRequestBody loginRequestBody}) async {
    final result =
        await remoteDataSource.publicDriverLogin(loginBody: loginRequestBody);
    result.fold(
      (l) => emit(LoginState.loginFailure(message: l.message)),
      (r) => emit(
        LoginState.loginPublicDriverSuccess(publicDriver: r),
      ),
    );
  }

  void loginAsOrgDriver({required LoginRequestBody loginRequestBody}) {}
}
