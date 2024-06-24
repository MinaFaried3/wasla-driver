part of 'accepts_request_cubit.dart';

@freezed
class AcceptsRequestState with _$AcceptsRequestState {
  const factory AcceptsRequestState.initial() = _Initial;
  const factory AcceptsRequestState.loading() = _loading;
  const factory AcceptsRequestState.acceptRequestSuccess() =
      _acceptRequestSuccess;
  const factory AcceptsRequestState.acceptRequestError(
      {required String message}) = _acceptRequestError;
}
