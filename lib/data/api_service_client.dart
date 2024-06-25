import 'dart:io';

import 'package:retrofit/http.dart';
import 'package:retrofit/retrofit.dart';
import 'package:wasla_driver/app/shared/common/common_libs.dart';
import 'package:wasla_driver/data/end_points_manager.dart';
import 'package:wasla_driver/data/reponse/base_response.dart';
import 'package:wasla_driver/data/reponse/check_username_response.dart';
import 'package:wasla_driver/data/requests/CreatePublicTripRequest.dart';
import 'package:wasla_driver/data/requests/LoginRequest.dart';
import 'package:wasla_driver/models/CurrentPassengersTrips.dart';
import 'package:wasla_driver/models/CurrentTripDetailsResponse.dart';
import 'package:wasla_driver/models/CurrentTripResponse.dart';
import 'package:wasla_driver/models/DriverResponse.dart';
import 'package:wasla_driver/models/PublicDriverVehicleResponse.dart';
import 'package:wasla_driver/models/StationsResponse.dart';
import 'package:wasla_driver/models/TripHistoryByDateResponse.dart';
import 'package:wasla_driver/models/TripHistoryResponse.dart';
import 'package:wasla_driver/models/TripStatusResponse.dart';
import 'package:wasla_driver/models/base_response.dart';

part 'api_service_client.g.dart';

@RestApi(baseUrl: EndPointsManager.baseUrl)
abstract class ApiServiceClient {
  factory ApiServiceClient(Dio dio, {String baseUrl}) = _ApiServiceClient;

  ///auth
  ///login
  @POST(EndPointsManager.login)
  Future<PublicDriverResponse> publicDriverLogin(
      {@Body() required LoginRequestBody loginRequestBody});

  ///register
  @GET(EndPointsManager.checkUserName)
  @Headers(HeadersManager.jsonTypeHeader)
  Future<CheckUsernameResponse> checkUsername({
    @Query('userName') required String userName,
  });

  @POST(EndPointsManager.publicDriverRegister)
  @MultiPart()
  Future<PublicDriverResponse> registerAsPublicDriver({
    @Part(name: 'ProfileImageFile') required File profileImageFile,
    @Part(name: 'LicenseImageFile') required File licenseImageFile,
    @Part(name: 'LicenseNum') required String licenseNum,
    @Part(name: 'PhoneNumber') required String phoneNumber,
    @Part(name: 'Password') required String password,
    @Part(name: 'Email') required String email,
    @Part(name: 'FirstName') required String firstName,
    @Part(name: 'LastName') required String lastName,
    @Part(name: 'UserName') required String userName,
  });

  @GET(EndPointsManager.stations)
  Future<StationsResponse> getStations();

  @GET('/PublicDriver/currentTrip')
  Future<CurrentTripResponse> getCurrentTrip({
    @Header("Authorization") required String authorization,
  });

  @POST('/PublicDriver/createPublicTrip')
  Future<BaseResponseWithOutData> createTrip(
      {@Query("userId") required String userId,
      @Body() required CreatePublicTripRequest createTrip});

  @PUT('/PublicDriver/acceptPassengerReqeust/{reqeustId}')
  Future<BaseResponseWithOutData> acceptPassengerRequest({
    @Path("reqeustId") required String requestId,
  });

  @PUT('/PublicDriver/update/trip/start/{tripId}')
  Future<BaseResponseWithOutData> startTrip({
    @Path("tripId") required String tripId,
  });

  @PUT('/PublicDriver/updateTripStatus')
  Future<BaseResponseWithOutData> updateTripStatus({
    @Query("tripId") required String tripId,
    @Query("status") required String status,
  });
  @PUT('/PublicDriver/endCurrentTrip')
  Future<BaseResponseWithOutData> endTrip({
    @Header("Authorization") required String authorization,
  });

  @GET('/PublicDriver/trip/status/{tripId}')
  Future<TripStatusResponse> getCurrentTripStatus({
    @Path("tripId") required String tripId,
  });

  @GET('/PublicDriver/currentTripStatus')
  Future<CurrentTripDetailsResponse> getCurrentTripDetails({
    @Query("userId") required String userId,
  });

  @GET('/PublicDriver/getTripPassengers/{publicTripId}')
  Future<CurrentPassengersTripsResponse> getCurrentPassengers({
    @Path("publicTripId") required String tripId,
  });

  @PUT('/PublicDriver/trip/updateLocation')
  Future<BaseResponseWithOutData> updateLocation({
    @Header("Authorization") required String authorization,
    @Field("latitude") required String latitude,
    @Field("langtitude") required String langtitude,
  });

  ///============Profile
  @GET(EndPointsManager.getPublicDriverVehicle)
  Future<PublicDriverVehicleResponse> getPublicDriverVehicle({
    @Header("Authorization") required String authorization,
  });

  @GET(EndPointsManager.getPublicDriverProfile)
  Future<PublicDriverProfileResponse> getPublicDriverProfile({
    @Path("PublicDirverId") required String id,
  });

  @GET(EndPointsManager.createPublicDriverVehicle)
  @MultiPart()
  Future<BaseResponse> createPublicDriverVehicle({
    @Header("Authorization") required String authorization,
    @Part(name: 'Category') required String category,
    @Part(name: 'LicenseNumber') required String licenseNumber,
    @Part(name: 'LicenseWord') required String licenseWord,
    @Part(name: 'Capcity') required String capacity,
    @Part(name: 'Brand') required String brand,
    @Part(name: 'PackageCapcity') required String packageCapacity,
    @Part(name: 'AdsSidesNumber') required String adsSidesNumber,
    @Part(name: 'Image') required File image,
    @Part(name: 'PublicDriverId') required String publicDriverId,
  });

  ///history -----------------------------------------------------------------
  @GET(EndPointsManager.getTripsHistory)
  Future<TripsHistoryResponse> getTripsHistory({
    @Header("Authorization") required String authorization,
  });

  @GET(EndPointsManager.getTripHistoryByDate)
  Future<TripsHistoryByDateResponse> getTripHistoryByDate({
    @Header("Authorization") required String authorization,
    @Path("tripDate") required String tripDate,
  });

  ///----------------------------------------------------------------------
  ///verification
  ///edit contacts
  // @PUT(EndPointsManager.editPhone)
  // Future<BaseResponseWithOutData> editPhone(
  //     {@Body() required EditPhoneRequestBody editPhoneRequestBody});
  //
  // @PUT(EndPointsManager.editEmail)
  // Future<BaseResponseWithOutData> editEmail(
  //     {@Body() required EditEmailRequestBody editEmailRequestBody});
  //
  // @GET(EndPointsManager.sendEmail)
  // Future<BaseResponseWithOutData> sendVerificationEmailToPassenger(
  //     @Path('email') String email);
  //
  // @PUT(EndPointsManager.confirmEmail)
  // FutureBaseResponse confirmEmail(
  //     {@Header("Cookie") required String cookie,
  //     @Body() required ConfirmEmailRequestBody confirmEmailRequestBody});

  ///----------------------------------------------------------------------------
//////Home

  ///main screen

  ///profile
  // @GET(EndPointsManager.profile)
  // Future<ProfileResponse> getProfile({
  //   @Header("Authorization") required String authorization,
  // });
}
