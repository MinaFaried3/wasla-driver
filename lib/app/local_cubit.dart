import 'package:wasla_driver/app/shared/common/common_libs.dart';
import 'package:wasla_driver/data/source/local_data_source.dart';
import 'package:wasla_driver/models/DriverResponse.dart';

part 'local_cubit.freezed.dart';
part 'local_state.dart';

class LocalCubit extends Cubit<LocalState> {
  final LocalDataSource localDataSource;

  LocalCubit({required this.localDataSource})
      : super(const LocalState.initial());

  void getPublicDriverModelFromLocalDataBase() async {
    localStateHelper(callback: () async {
      PublicDriverModel driver = await localDataSource.getPublicDriverModel();
      emit(LocalState.getLocalPublicDriverModelSuccess(publicDriver: driver));
    });
  }

  void getPublicDriverModelConnections() async {
    // localStateHelper(callback: () async {
    //   Connections connections =
    //       (await localDataSource.getPassengerModel()).connections;
    //   emit(LocalState.getLocalPassengerConnectionsSuccess(
    //       passengerConnections: connections));
    // });
  }

  void localStateHelper({required VoidCallback callback}) async {
    emit(const LocalState.getLocalLoading());
    try {
      callback();
    } catch (error) {
      emit(LocalState.getLocalFailure(failureMessage: error.toString()));
    }
  }
}
