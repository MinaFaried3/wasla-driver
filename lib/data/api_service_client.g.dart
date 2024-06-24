// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_service_client.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps,no_leading_underscores_for_local_identifiers

class _ApiServiceClient implements ApiServiceClient {
  _ApiServiceClient(
    this._dio, {
    this.baseUrl,
  }) {
    baseUrl ??= 'https://wasla.runasp.net/api';
  }

  final Dio _dio;

  String? baseUrl;

  @override
  Future<PublicDriverResponse> publicDriverLogin(
      {required LoginRequestBody loginRequestBody}) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(loginRequestBody.toJson());
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<PublicDriverResponse>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/auth/login',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    final value = PublicDriverResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<CheckUsernameResponse> checkUsername(
      {required String userName}) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'userName': userName};
    final _headers = <String, dynamic>{r'Content-Type': 'application/json'};
    _headers.removeWhere((k, v) => v == null);
    const Map<String, dynamic>? _data = null;
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<CheckUsernameResponse>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
      contentType: 'application/json',
    )
            .compose(
              _dio.options,
              '/verification/check/userName',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    final value = CheckUsernameResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<PublicDriverResponse> registerAsPublicDriver({
    required File profileImageFile,
    required File licenseImageFile,
    required String licenseNum,
    required String phoneNumber,
    required String password,
    required String email,
    required String firstName,
    required String lastName,
    required String userName,
  }) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = FormData();
    _data.files.add(MapEntry(
      'ProfileImageFile',
      MultipartFile.fromFileSync(
        profileImageFile.path,
        filename: profileImageFile.path.split(Platform.pathSeparator).last,
      ),
    ));
    _data.files.add(MapEntry(
      'LicenseImageFile',
      MultipartFile.fromFileSync(
        licenseImageFile.path,
        filename: licenseImageFile.path.split(Platform.pathSeparator).last,
      ),
    ));
    _data.fields.add(MapEntry(
      'LicenseNum',
      licenseNum,
    ));
    _data.fields.add(MapEntry(
      'PhoneNumber',
      phoneNumber,
    ));
    _data.fields.add(MapEntry(
      'Password',
      password,
    ));
    _data.fields.add(MapEntry(
      'Email',
      email,
    ));
    _data.fields.add(MapEntry(
      'FirstName',
      firstName,
    ));
    _data.fields.add(MapEntry(
      'LastName',
      lastName,
    ));
    _data.fields.add(MapEntry(
      'UserName',
      userName,
    ));
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<PublicDriverResponse>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
      contentType: 'multipart/form-data',
    )
            .compose(
              _dio.options,
              '/auth/driver/register',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    final value = PublicDriverResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<StationsResponse> getStations() async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    const Map<String, dynamic>? _data = null;
    final _result = await _dio
        .fetch<Map<String, dynamic>>(_setStreamType<StationsResponse>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/SystemAdmin/stations',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    final value = StationsResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<CurrentTripResponse> getCurrentTrip(
      {required String authorization}) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{r'Authorization': authorization};
    _headers.removeWhere((k, v) => v == null);
    const Map<String, dynamic>? _data = null;
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<CurrentTripResponse>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/PublicDriver/currentTrip',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    final value = CurrentTripResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<BaseResponseWithOutData> createTrip({
    required String userId,
    required CreatePublicTripRequest createTrip,
  }) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'userId': userId};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(createTrip.toJson());
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<BaseResponseWithOutData>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/PublicDriver/createPublicTrip',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    final value = BaseResponseWithOutData.fromJson(_result.data!);
    return value;
  }

  @override
  Future<BaseResponseWithOutData> acceptPassengerRequest(
      {required String requestId}) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    const Map<String, dynamic>? _data = null;
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<BaseResponseWithOutData>(Options(
      method: 'PUT',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/PublicDriver/acceptPassengerReqeust/${requestId}',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    final value = BaseResponseWithOutData.fromJson(_result.data!);
    return value;
  }

  @override
  Future<BaseResponseWithOutData> startTrip({required String tripId}) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    const Map<String, dynamic>? _data = null;
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<BaseResponseWithOutData>(Options(
      method: 'PUT',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/PublicDriver/update/trip/start/${tripId}',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    final value = BaseResponseWithOutData.fromJson(_result.data!);
    return value;
  }

  @override
  Future<BaseResponseWithOutData> updateTripStatus({
    required String tripId,
    required String status,
  }) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'tripId': tripId,
      r'status': status,
    };
    final _headers = <String, dynamic>{};
    const Map<String, dynamic>? _data = null;
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<BaseResponseWithOutData>(Options(
      method: 'PUT',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/PublicDriver/updateTripStatus',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    final value = BaseResponseWithOutData.fromJson(_result.data!);
    return value;
  }

  @override
  Future<BaseResponseWithOutData> endTrip(
      {required String authorization}) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{r'Authorization': authorization};
    _headers.removeWhere((k, v) => v == null);
    const Map<String, dynamic>? _data = null;
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<BaseResponseWithOutData>(Options(
      method: 'PUT',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/PublicDriver/endCurrentTrip',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    final value = BaseResponseWithOutData.fromJson(_result.data!);
    return value;
  }

  @override
  Future<TripStatusResponse> getCurrentTripStatus(
      {required String tripId}) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    const Map<String, dynamic>? _data = null;
    final _result = await _dio
        .fetch<Map<String, dynamic>>(_setStreamType<TripStatusResponse>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/PublicDriver/trip/status/${tripId}',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    final value = TripStatusResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<CurrentTripDetailsResponse> getCurrentTripDetails(
      {required String userId}) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'userId': userId};
    final _headers = <String, dynamic>{};
    const Map<String, dynamic>? _data = null;
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<CurrentTripDetailsResponse>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/PublicDriver/currentTripStatus',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    final value = CurrentTripDetailsResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<CurrentPassengersTripsResponse> getCurrentPassengers(
      {required String tripId}) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    const Map<String, dynamic>? _data = null;
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<CurrentPassengersTripsResponse>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/PublicDriver/getTripPassengers/${tripId}',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    final value = CurrentPassengersTripsResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<BaseResponseWithOutData> updateLocation({
    required String authorization,
    required String latitude,
    required String langtitude,
  }) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{r'Authorization': authorization};
    _headers.removeWhere((k, v) => v == null);
    final _data = {
      'latitude': latitude,
      'langtitude': langtitude,
    };
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<BaseResponseWithOutData>(Options(
      method: 'PUT',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/PublicDriver/trip/updateLocation',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    final value = BaseResponseWithOutData.fromJson(_result.data!);
    return value;
  }

  @override
  Future<PublicDriverVehicleResponse> getPublicDriverVehicle(
      {required String authorization}) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{r'Authorization': authorization};
    _headers.removeWhere((k, v) => v == null);
    const Map<String, dynamic>? _data = null;
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<PublicDriverVehicleResponse>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/PublicDriver/vehicle',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    final value = PublicDriverVehicleResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<PublicDriverProfileResponse> getPublicDriverProfile(
      {required String id}) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    const Map<String, dynamic>? _data = null;
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<PublicDriverProfileResponse>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/PublicDriver/getProfile?userId=${id}',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    final value = PublicDriverProfileResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<BaseResponse> createPublicDriverVehicle({
    required String authorization,
    required String category,
    required String licenseNumber,
    required String licenseWord,
    required String capacity,
    required String brand,
    required String packageCapacity,
    required String adsSidesNumber,
    required File image,
    required String publicDriverId,
  }) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{r'Authorization': authorization};
    _headers.removeWhere((k, v) => v == null);
    final _data = FormData();
    _data.fields.add(MapEntry(
      'Category',
      category,
    ));
    _data.fields.add(MapEntry(
      'LicenseNumber',
      licenseNumber,
    ));
    _data.fields.add(MapEntry(
      'LicenseWord',
      licenseWord,
    ));
    _data.fields.add(MapEntry(
      'Capcity',
      capacity,
    ));
    _data.fields.add(MapEntry(
      'Brand',
      brand,
    ));
    _data.fields.add(MapEntry(
      'PackageCapcity',
      packageCapacity,
    ));
    _data.fields.add(MapEntry(
      'AdsSidesNumber',
      adsSidesNumber,
    ));
    _data.files.add(MapEntry(
      'Image',
      MultipartFile.fromFileSync(
        image.path,
        filename: image.path.split(Platform.pathSeparator).last,
      ),
    ));
    _data.fields.add(MapEntry(
      'PublicDriverId',
      publicDriverId,
    ));
    final _result = await _dio
        .fetch<Map<String, dynamic>>(_setStreamType<BaseResponse>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
      contentType: 'multipart/form-data',
    )
            .compose(
              _dio.options,
              '/PublicDriver/CreateVehicle',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    final value = BaseResponse.fromJson(_result.data!);
    return value;
  }

  RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == ResponseType.bytes ||
            requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }

  String _combineBaseUrls(
    String dioBaseUrl,
    String? baseUrl,
  ) {
    if (baseUrl == null || baseUrl.trim().isEmpty) {
      return dioBaseUrl;
    }

    final url = Uri.parse(baseUrl);

    if (url.isAbsolute) {
      return url.toString();
    }

    return Uri.parse(dioBaseUrl).resolveUri(url).toString();
  }
}
