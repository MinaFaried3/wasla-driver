import 'package:wasla_driver/app/shared/common/common_libs.dart';
import 'package:wasla_driver/data/api_service_client.dart';
import 'package:wasla_driver/data/error/data_source_status.dart';
import 'package:wasla_driver/data/error/server_failure.dart';
import 'package:wasla_driver/data/network_checker.dart';
import 'package:wasla_driver/data/network_error_handler.dart';
import 'package:wasla_driver/data/source/local_data_source.dart';
import 'package:wasla_driver/models/base_response.dart' as base;

abstract class BaseRepository extends Equatable {
  final ApiServiceClient apiServiceClient;
  final LocalDataSource localDataSource;
  final NetworkChecker networkChecker;

  const BaseRepository(
      {required this.apiServiceClient,
      required this.localDataSource,
      required this.networkChecker});

  Future<String> get bearerToken async {
    return "Bearer ${await getIt<AppPreferences>().getToken()}";
  }

  Future<String> get driverId async {
    return await getIt<AppPreferences>().getID();
  }

  FailureOr<Model> executeApiCall<Response extends base.BaseResponse,
      Model extends Object?>({
    required Future<Response> Function() apiCall,
    required Model Function(Response) onSuccess,
  }) async {
    if (!await networkChecker.isConnected) {
      return Left(DataSourceStatus.noInternetConnection.getFailure());
    }

    try {
      final response = await apiCall();
      if (response.isSuccess == true) {
        return Right(onSuccess(response));
      } else {
        return Left(ServerFailure(
          code: response.status ?? ApiInternalStatus.failure,
          message: response.message ?? AppStrings.defaultError,
        ));
      }
    } catch (error) {
      PrintManager.print(error.toString(), color: ConsoleColor.redBg);
      return Left(ErrorHandler.handle(error).failure);
    }
  }

  @override
  List<Object> get props => [
        apiServiceClient,
        localDataSource,
        networkChecker,
      ];
}
