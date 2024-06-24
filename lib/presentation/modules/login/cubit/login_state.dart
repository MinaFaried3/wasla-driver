part of 'login_cubit.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState.initial() = _Initial;
  const factory LoginState.loading() = _loading;
  const factory LoginState.loginFailure({required String message}) =
      _loginFailure;
  const factory LoginState.loginPublicDriverSuccess(
      {required PublicDriverModel publicDriver}) = _loginPublicDriverSuccess;
}
