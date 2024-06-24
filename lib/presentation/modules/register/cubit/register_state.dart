part of 'register_cubit.dart';

@freezed
class RegisterState with _$RegisterState {
  const factory RegisterState.initial() = _Initial;
  const factory RegisterState.loading() = _loading;
  const factory RegisterState.registerPublicDriverSuccess(
          {required PublicDriverModel publicDriverModel}) =
      _registerPublicDriverSuccess;
  const factory RegisterState.registerPublicDriverFailure(
      {required String message}) = _registerPublicDriverFailure;
}
