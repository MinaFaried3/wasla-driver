part of 'local_cubit.dart';

@freezed
class LocalState with _$LocalState {
  const factory LocalState.initial() = _InitialState;

  const factory LocalState.getLocalLoading() = _GetLocalLoadingState;

  const factory LocalState.getLocalPublicDriverModelSuccess(
          {required PublicDriverModel publicDriver}) =
      _GetLocalPublicDriverModelSuccessState;

  const factory LocalState.getLocalConnectionsSuccess(
      {required Connection connection}) = _GetLocalConnectionsSuccessState;

  const factory LocalState.getLocalFailure({required String failureMessage}) =
      _GetLocalFailureState;
}
