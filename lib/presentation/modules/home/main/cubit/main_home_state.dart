part of 'main_home_cubit.dart';

@freezed
class MainHomeState with _$MainHomeState {
  const factory MainHomeState.initial() = _Initial;
  const factory MainHomeState.loading() = _loading;
  const factory MainHomeState.getStationsSuccess(
      {required List<Station> stations}) = _getStationsSuccess;
  const factory MainHomeState.getStationError({required String message}) =
      _getStationError;
}
