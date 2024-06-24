import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wasla_driver/data/source/public_driver_repository.dart';
import 'package:wasla_driver/models/StationsResponse.dart';

part 'main_home_cubit.freezed.dart';
part 'main_home_state.dart';

class MainHomeCubit extends Cubit<MainHomeState> {
  final PublicDriverRepository remoteDataSource;
  MainHomeCubit({required this.remoteDataSource})
      : super(const MainHomeState.initial());

  List<Station>? stations;

  void getStations() async {
    if (stations != null) {
      emit(MainHomeState.getStationsSuccess(stations: stations!));
      return;
    }

    emit(const MainHomeState.loading());

    final result = await remoteDataSource.getStations();
    result.fold((l) => emit(MainHomeState.getStationError(message: l.message)),
        (r) {
      emit(MainHomeState.getStationsSuccess(stations: r));
      stations = r;
    });
  }
}
