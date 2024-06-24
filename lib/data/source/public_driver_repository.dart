import 'package:wasla_driver/app/shared/common/common_libs.dart';
import 'package:wasla_driver/data/error/data_source_status.dart';
import 'package:wasla_driver/data/error/server_failure.dart';
import 'package:wasla_driver/data/reponse/check_username_response.dart';
import 'package:wasla_driver/data/requests/CreatePublicTripRequest.dart';
import 'package:wasla_driver/data/requests/LoginRequest.dart';
import 'package:wasla_driver/data/requests/create_vehicle_request.dart';
import 'package:wasla_driver/data/requests/register_request.dart';
import 'package:wasla_driver/data/source/base_repository.dart';
import 'package:wasla_driver/models/CurrentPassengersTrips.dart';
import 'package:wasla_driver/models/CurrentTripDetailsResponse.dart';
import 'package:wasla_driver/models/CurrentTripResponse.dart';
import 'package:wasla_driver/models/DriverResponse.dart';
import 'package:wasla_driver/models/PublicDriverProfileResponse.dart';
import 'package:wasla_driver/models/PublicDriverVehicleResponse.dart';
import 'package:wasla_driver/models/StationsResponse.dart';
import 'package:wasla_driver/models/base_response.dart';

import '../network_error_handler.dart';

class PublicDriverRepository extends BaseRepository {
  const PublicDriverRepository(
      {required super.apiServiceClient,
      required super.localDataSource,
      required super.networkChecker});

  FailureOr<PublicDriverModel> publicDriverLogin(
      {required LoginRequestBody loginBody}) async {
    if (!await networkChecker.isConnected) {
      return Left(DataSourceStatus.noInternetConnection.getFailure());
    }

    try {
      final response =
          await apiServiceClient.publicDriverLogin(loginRequestBody: loginBody);

      if (response.isSuccess == true) {
        localDataSource.setPublicDriverModel(response.data!);
        getIt<AppPreferences>()
            .saveMainPublicDriverData(driver: response.data!);
        return Right(response.data!);
      } else {
        return Left(ServerFailure(
          code: response.status!.toInt() ?? ApiInternalStatus.failure,
          message: response.message ?? AppStrings.defaultError,
        ));
      }
    } catch (error) {
      PrintManager.print(error.toString(), color: ConsoleColor.reset);
      return Left(ErrorHandler.handle(error).failure);
    }
  }

  FailureOr<CheckUsernameData> checkUsername(String username) async {
    if (!await networkChecker.isConnected) {
      return Left(DataSourceStatus.noInternetConnection.getFailure());
    }

    try {
      final response = await apiServiceClient.checkUsername(userName: username);

      if (response.success == true) {
        return Right(response.data!);
      } else {
        return Left(ServerFailure(
          code: response.status!.toInt() ?? ApiInternalStatus.failure,
          message: response.message ?? AppStrings.defaultError,
        ));
      }
    } catch (error) {
      PrintManager.print(error.toString(), color: ConsoleColor.reset);
      return Left(ErrorHandler.handle(error).failure);
    }
  }

  FailureOr<PublicDriverModel> registerAsPublicDriver(
      {required RegisterRequest registerRequest}) async {
    if (!await networkChecker.isConnected) {
      return Left(DataSourceStatus.noInternetConnection.getFailure());
    }

    try {
      final response = await apiServiceClient.registerAsPublicDriver(
        profileImageFile: registerRequest.profileImageFile,
        licenseImageFile: registerRequest.licenseImageFile,
        licenseNum: registerRequest.licenseNum,
        phoneNumber: registerRequest.phoneNumber,
        password: registerRequest.password,
        email: registerRequest.email,
        firstName: registerRequest.firstName,
        lastName: registerRequest.lastName,
        userName: registerRequest.userName,
      );

      if (response.isSuccess == true) {
        localDataSource.setPublicDriverModel(response.data!);
        getIt<AppPreferences>()
            .saveMainPublicDriverData(driver: response.data!);
        return Right(response.data!);
      } else {
        return Left(ServerFailure(
          code: response.status!.toInt() ?? ApiInternalStatus.failure,
          message: response.message ?? AppStrings.defaultError,
        ));
      }
    } catch (error) {
      PrintManager.print(error.toString(), color: ConsoleColor.reset);
      return Left(ErrorHandler.handle(error).failure);
    }
  }

  FailureOr<List<Station>> getStations() async {
    if (!await networkChecker.isConnected) {
      return Left(DataSourceStatus.noInternetConnection.getFailure());
    }

    try {
      final response = await apiServiceClient.getStations();

      if (response.isSuccess == true) {
        return Right(response.data!);
      } else {
        return Left(ServerFailure(
          code: response.status!.toInt() ?? ApiInternalStatus.failure,
          message: response.message ?? AppStrings.defaultError,
        ));
      }
    } catch (error) {
      PrintManager.print(error.toString(), color: ConsoleColor.reset);
      return Left(ErrorHandler.handle(error).failure);
    }
  }

  FailureOr<CurrentTripModel?> getCurrentTrip() async {
    if (!await networkChecker.isConnected) {
      return Left(DataSourceStatus.noInternetConnection.getFailure());
    }

    try {
      final response = await apiServiceClient.getCurrentTrip(
          authorization: (await bearerToken));

      if (response.isSuccess == true) {
        return Right(response.data);
      } else {
        return Left(ServerFailure(
          code: response.status!.toInt() ?? ApiInternalStatus.failure,
          message: response.message ?? AppStrings.defaultError,
        ));
      }
    } catch (error) {
      PrintManager.print(error.toString(), color: ConsoleColor.reset);
      return Left(ErrorHandler.handle(error).failure);
    }
  }

  FailureOr<bool> createTrip(
      {required CreatePublicTripRequest createTrip}) async {
    if (!await networkChecker.isConnected) {
      return Left(DataSourceStatus.noInternetConnection.getFailure());
    }

    try {
      final response = await apiServiceClient.createTrip(
          userId: (await driverId), createTrip: createTrip);

      if (response.success == true) {
        return Right(true);
      } else {
        return Left(ServerFailure(
          code: response.status!.toInt() ?? ApiInternalStatus.failure,
          message: response.message ?? AppStrings.defaultError,
        ));
      }
    } catch (error) {
      PrintManager.print(error.toString(), color: ConsoleColor.reset);
      return Left(ErrorHandler.handle(error).failure);
    }
  }

  FailureOr<bool> acceptPassengerRequest({required String reqeustId}) async {
    if (!await networkChecker.isConnected) {
      return Left(DataSourceStatus.noInternetConnection.getFailure());
    }

    try {
      final response =
          await apiServiceClient.acceptPassengerRequest(requestId: reqeustId);

      if (response.success == true) {
        return const Right(true);
      } else {
        return Left(ServerFailure(
          code: response.status!.toInt() ?? ApiInternalStatus.failure,
          message: response.message ?? AppStrings.defaultError,
        ));
      }
    } catch (error) {
      PrintManager.print(error.toString(), color: ConsoleColor.reset);
      return Left(ErrorHandler.handle(error).failure);
    }
  }

  FailureOr<String> startTrip({required String tripId}) async {
    if (!await networkChecker.isConnected) {
      return Left(DataSourceStatus.noInternetConnection.getFailure());
    }

    try {
      final response1 = await apiServiceClient.startTrip(tripId: tripId);
      final response2 =
          await apiServiceClient.updateTripStatus(tripId: tripId, status: '1');

      if (response1.success == true && response2.success == true) {
        return Right(response1.message!);
      } else {
        return Left(ServerFailure(
          code: response1.status!.toInt() ?? ApiInternalStatus.failure,
          message: response1.message ?? AppStrings.defaultError,
        ));
      }
    } catch (error) {
      PrintManager.print(error.toString(), color: ConsoleColor.reset);
      return Left(ErrorHandler.handle(error).failure);
    }
  }

  FailureOr<String> endTrip({required String tripId}) async {
    if (!await networkChecker.isConnected) {
      return Left(DataSourceStatus.noInternetConnection.getFailure());
    }

    try {
      final response1 =
          await apiServiceClient.endTrip(authorization: (await bearerToken));
      final response2 =
          await apiServiceClient.updateTripStatus(tripId: tripId, status: '3');

      if (response1.success == true && response2.success == true) {
        return Right(response1.message!);
      } else {
        return Left(ServerFailure(
          code: response1.status!.toInt() ?? ApiInternalStatus.failure,
          message: response1.message ?? AppStrings.defaultError,
        ));
      }
    } catch (error) {
      PrintManager.print(error.toString(), color: ConsoleColor.reset);
      return Left(ErrorHandler.handle(error).failure);
    }
  }

  FailureOr<bool> updateTripStatus(
      {required String tripId, required String status}) async {
    if (!await networkChecker.isConnected) {
      return Left(DataSourceStatus.noInternetConnection.getFailure());
    }

    try {
      final response = await apiServiceClient.updateTripStatus(
          tripId: tripId, status: status);

      if (response.success == true) {
        return const Right(true);
      } else {
        return Left(ServerFailure(
          code: response.status!.toInt() ?? ApiInternalStatus.failure,
          message: response.message ?? AppStrings.defaultError,
        ));
      }
    } catch (error) {
      PrintManager.print(error.toString(), color: ConsoleColor.reset);
      return Left(ErrorHandler.handle(error).failure);
    }
  }

  FailureOr<int> getCurrentTripStatus({required String tripId}) async {
    if (!await networkChecker.isConnected) {
      return Left(DataSourceStatus.noInternetConnection.getFailure());
    }

    try {
      final response =
          await apiServiceClient.getCurrentTripStatus(tripId: tripId);

      if (response.isSuccess == true) {
        return Right(response.data!);
      } else {
        return Left(ServerFailure(
          code: response.status!.toInt() ?? ApiInternalStatus.failure,
          message: response.message ?? AppStrings.defaultError,
        ));
      }
    } catch (error) {
      PrintManager.print(error.toString(), color: ConsoleColor.reset);
      return Left(ErrorHandler.handle(error).failure);
    }
  }

  FailureOr<CurrentTripDetailsModel> getCurrentTripDetails() async {
    if (!await networkChecker.isConnected) {
      return Left(DataSourceStatus.noInternetConnection.getFailure());
    }

    try {
      final response = await apiServiceClient.getCurrentTripDetails(
          userId: (await driverId));

      if (response.isSuccess == true) {
        return Right(response.data!);
      } else {
        return Left(ServerFailure(
          code: response.status!.toInt() ?? ApiInternalStatus.failure,
          message: response.message ?? AppStrings.defaultError,
        ));
      }
    } catch (error) {
      PrintManager.print(error.toString(), color: ConsoleColor.reset);
      return Left(ErrorHandler.handle(error).failure);
    }
  }

  FailureOr<List<CurrentPassengersTripsModel>> getCurrentTripPassengers(
      {required String tripId}) async {
    if (!await networkChecker.isConnected) {
      return Left(DataSourceStatus.noInternetConnection.getFailure());
    }

    try {
      final response = await apiServiceClient.getCurrentPassengers(
        tripId: tripId,
      );

      if (response.isSuccess == true) {
        return Right(response.data!);
      } else {
        return Left(ServerFailure(
          code: response.status!.toInt() ?? ApiInternalStatus.failure,
          message: response.message ?? AppStrings.defaultError,
        ));
      }
    } catch (error) {
      PrintManager.print(error.toString(), color: ConsoleColor.reset);
      return Left(ErrorHandler.handle(error).failure);
    }
  }

  FailureOr<bool> updateLocation(
      {required String latitude, required String langtitude}) async {
    if (!await networkChecker.isConnected) {
      return Left(DataSourceStatus.noInternetConnection.getFailure());
    }

    try {
      final response = await apiServiceClient.updateLocation(
          authorization: (await bearerToken),
          latitude: latitude,
          langtitude: langtitude);

      if (response.success == true) {
        return Right(true);
      } else {
        return Left(ServerFailure(
          code: response.status!.toInt() ?? ApiInternalStatus.failure,
          message: response.message ?? AppStrings.defaultError,
        ));
      }
    } catch (error) {
      PrintManager.print(error.toString(), color: ConsoleColor.reset);
      return Left(ErrorHandler.handle(error).failure);
    }
  }

  FailureOr<PublicDriverVehicleModel?> getPublicDriverVehicle() async {
    return await executeApiCall<PublicDriverVehicleResponse,
            PublicDriverVehicleModel?>(
        apiCall: () async {
          return apiServiceClient.getPublicDriverVehicle(
            authorization: (await bearerToken),
          );
        },
        onSuccess: (response) => response.data);
  }

  FailureOr<PublicDriverProfileModel> getPublicDriverProfile() async {
    return await executeApiCall<PublicDriverProfileResponse,
            PublicDriverProfileModel>(
        apiCall: () async =>
            apiServiceClient.getPublicDriverProfile(id: (await driverId)),
        onSuccess: (response) => response.data!);
  }

  FailureOr<BaseResponse> createPublicDriverVehicle(
      {required CreateVehicleRequest createVehicleRequest}) async {
    return await executeApiCall<BaseResponse, BaseResponse>(
        apiCall: () async {
          return apiServiceClient.createPublicDriverVehicle(
              authorization: (await bearerToken),
              category: createVehicleRequest.category,
              licenseNumber: createVehicleRequest.licenseNumber,
              licenseWord: createVehicleRequest.licenseWord,
              capacity: createVehicleRequest.capacity,
              brand: createVehicleRequest.brand,
              packageCapacity: createVehicleRequest.packageCapacity,
              adsSidesNumber: createVehicleRequest.adsSidesNumber,
              image: createVehicleRequest.image,
              publicDriverId: createVehicleRequest.publicDriverId);
        },
        onSuccess: (response) => response);
  }
}
