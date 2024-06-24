import 'package:wasla_driver/models/base_response.dart';

/// status : 200
/// isSuccess : true
/// message : null
/// data : {"id":"8fe47460-4762-4d64-9856-0dd51b046e0d","userName":"moali","firstName":"mohamed","lastName":"ali","phoneNumber":"01158927534","photoUrl":"https://static.vecteezy.com/system/resources/thumbnails/009/292/244/small/default-avatar-icon-of-social-media-user-vector.jpg","gender":0,"licenseImageUrl":"https://wasla.runasp.net/Images/5b7c25e5-01ef-418d-ae53-dfc935d23e1f.png","birthdate":null,"licenseNum":"1234","nationalId":null,"vehicle":{"licenseNumber":546646,"licenseWord":"الب"}}

class PublicDriverProfileResponse extends BaseResponse {
  PublicDriverProfileResponse(
      {super.status, super.isSuccess, super.message, this.data});

  PublicDriverProfileResponse.fromJson(dynamic json) {
    super.fromJson(json);
    data = json['data'] != null
        ? PublicDriverProfileModel.fromJson(json['data'])
        : null;
  }
  PublicDriverProfileModel? data;
  PublicDriverProfileResponse copyWith({
    int? status,
    bool? isSuccess,
    String? message,
    PublicDriverProfileModel? data,
  }) =>
      PublicDriverProfileResponse(
        status: status ?? super.status,
        isSuccess: isSuccess ?? super.isSuccess,
        message: message ?? super.message,
        data: data ?? data,
      );

  @override
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['status'] = super.status;
    map['isSuccess'] = super.isSuccess;
    map['message'] = super.message;
    if (data != null) {
      map['data'] = data?.toJson();
    }
    return map;
  }
}

/// id : "8fe47460-4762-4d64-9856-0dd51b046e0d"
/// userName : "moali"
/// firstName : "mohamed"
/// lastName : "ali"
/// phoneNumber : "01158927534"
/// photoUrl : "https://static.vecteezy.com/system/resources/thumbnails/009/292/244/small/default-avatar-icon-of-social-media-user-vector.jpg"
/// gender : 0
/// licenseImageUrl : "https://wasla.runasp.net/Images/5b7c25e5-01ef-418d-ae53-dfc935d23e1f.png"
/// birthdate : null
/// licenseNum : "1234"
/// nationalId : null
/// vehicle : {"licenseNumber":546646,"licenseWord":"الب"}

class PublicDriverProfileModel {
  PublicDriverProfileModel({
    String? id,
    String? userName,
    String? firstName,
    String? lastName,
    String? phoneNumber,
    String? photoUrl,
    int? gender,
    String? licenseImageUrl,
    dynamic birthdate,
    String? licenseNum,
    dynamic nationalId,
    VehicleProfileModel? vehicle,
  }) {
    _id = id;
    _userName = userName;
    _firstName = firstName;
    _lastName = lastName;
    _phoneNumber = phoneNumber;
    _photoUrl = photoUrl;
    _gender = gender;
    _licenseImageUrl = licenseImageUrl;
    _birthdate = birthdate;
    _licenseNum = licenseNum;
    _nationalId = nationalId;
    _vehicle = vehicle;
  }

  PublicDriverProfileModel.fromJson(dynamic json) {
    _id = json['id'];
    _userName = json['userName'];
    _firstName = json['firstName'];
    _lastName = json['lastName'];
    _phoneNumber = json['phoneNumber'];
    _photoUrl = json['photoUrl'];
    _gender = json['gender'];
    _licenseImageUrl = json['licenseImageUrl'];
    _birthdate = json['birthdate'];
    _licenseNum = json['licenseNum'];
    _nationalId = json['nationalId'];
    _vehicle = json['vehicle'] != null
        ? VehicleProfileModel.fromJson(json['vehicle'])
        : null;
  }
  String? _id;
  String? _userName;
  String? _firstName;
  String? _lastName;
  String? _phoneNumber;
  String? _photoUrl;
  int? _gender;
  String? _licenseImageUrl;
  dynamic _birthdate;
  String? _licenseNum;
  dynamic _nationalId;
  VehicleProfileModel? _vehicle;
  PublicDriverProfileModel copyWith({
    String? id,
    String? userName,
    String? firstName,
    String? lastName,
    String? phoneNumber,
    String? photoUrl,
    int? gender,
    String? licenseImageUrl,
    dynamic birthdate,
    String? licenseNum,
    dynamic nationalId,
    VehicleProfileModel? vehicle,
  }) =>
      PublicDriverProfileModel(
        id: id ?? _id,
        userName: userName ?? _userName,
        firstName: firstName ?? _firstName,
        lastName: lastName ?? _lastName,
        phoneNumber: phoneNumber ?? _phoneNumber,
        photoUrl: photoUrl ?? _photoUrl,
        gender: gender ?? _gender,
        licenseImageUrl: licenseImageUrl ?? _licenseImageUrl,
        birthdate: birthdate ?? _birthdate,
        licenseNum: licenseNum ?? _licenseNum,
        nationalId: nationalId ?? _nationalId,
        vehicle: vehicle ?? _vehicle,
      );
  String? get id => _id;
  String? get userName => _userName;
  String? get firstName => _firstName;
  String? get lastName => _lastName;
  String? get phoneNumber => _phoneNumber;
  String? get photoUrl => _photoUrl;
  int? get gender => _gender;
  String? get licenseImageUrl => _licenseImageUrl;
  dynamic get birthdate => _birthdate;
  String? get licenseNum => _licenseNum;
  dynamic get nationalId => _nationalId;
  VehicleProfileModel? get vehicle => _vehicle;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['userName'] = _userName;
    map['firstName'] = _firstName;
    map['lastName'] = _lastName;
    map['phoneNumber'] = _phoneNumber;
    map['photoUrl'] = _photoUrl;
    map['gender'] = _gender;
    map['licenseImageUrl'] = _licenseImageUrl;
    map['birthdate'] = _birthdate;
    map['licenseNum'] = _licenseNum;
    map['nationalId'] = _nationalId;
    if (_vehicle != null) {
      map['vehicle'] = _vehicle?.toJson();
    }
    return map;
  }
}

/// licenseNumber : 546646
/// licenseWord : "الب"

class VehicleProfileModel {
  VehicleProfileModel({
    int? licenseNumber,
    String? licenseWord,
  }) {
    _licenseNumber = licenseNumber;
    _licenseWord = licenseWord;
  }

  VehicleProfileModel.fromJson(dynamic json) {
    _licenseNumber = json['licenseNumber'];
    _licenseWord = json['licenseWord'];
  }
  int? _licenseNumber;
  String? _licenseWord;
  VehicleProfileModel copyWith({
    int? licenseNumber,
    String? licenseWord,
  }) =>
      VehicleProfileModel(
        licenseNumber: licenseNumber ?? _licenseNumber,
        licenseWord: licenseWord ?? _licenseWord,
      );
  int? get licenseNumber => _licenseNumber;
  String? get licenseWord => _licenseWord;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['licenseNumber'] = _licenseNumber;
    map['licenseWord'] = _licenseWord;
    return map;
  }
}
