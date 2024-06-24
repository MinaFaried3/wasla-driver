import 'package:wasla_driver/models/base_response.dart';

/// status : 200
/// isSuccess : true
/// message : null
/// data : {"id":18,"category":"microbus","licenseNumber":84521,"licenseWord":"هبص","capcity":14,"brand":"شيفورليه","packageCapcity":50,"adsSidesNumber":3,"imageUrl":"https://wasla.runasp.net/Images/a8a2f14f-49ad-4e99-9fb1-fc56f658b6cb.jpg","publicDriverId":"9a8b41dc-0189-43fd-ad2f-7e53effc0f8c","organizationId":null}

class PublicDriverVehicleResponse extends BaseResponse {
  PublicDriverVehicleResponse(
      {super.status, super.isSuccess, super.message, this.data});

  PublicDriverVehicleResponse.fromJson(dynamic json) {
    super.fromJson(json);
    data = json['data'] != null
        ? PublicDriverVehicleModel.fromJson(json['data'])
        : null;
  }
  PublicDriverVehicleModel? data;
  PublicDriverVehicleResponse copyWith({
    int? status,
    bool? isSuccess,
    String? message,
    PublicDriverVehicleModel? data,
  }) =>
      PublicDriverVehicleResponse(
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

/// id : 18
/// category : "microbus"
/// licenseNumber : 84521
/// licenseWord : "هبص"
/// capcity : 14
/// brand : "شيفورليه"
/// packageCapcity : 50
/// adsSidesNumber : 3
/// imageUrl : "https://wasla.runasp.net/Images/a8a2f14f-49ad-4e99-9fb1-fc56f658b6cb.jpg"
/// publicDriverId : "9a8b41dc-0189-43fd-ad2f-7e53effc0f8c"
/// organizationId : null

class PublicDriverVehicleModel {
  PublicDriverVehicleModel({
    int? id,
    String? category,
    int? licenseNumber,
    String? licenseWord,
    int? capcity,
    String? brand,
    int? packageCapcity,
    int? adsSidesNumber,
    String? imageUrl,
    String? publicDriverId,
    dynamic organizationId,
  }) {
    _id = id;
    _category = category;
    _licenseNumber = licenseNumber;
    _licenseWord = licenseWord;
    _capcity = capcity;
    _brand = brand;
    _packageCapcity = packageCapcity;
    _adsSidesNumber = adsSidesNumber;
    _imageUrl = imageUrl;
    _publicDriverId = publicDriverId;
    _organizationId = organizationId;
  }

  PublicDriverVehicleModel.fromJson(dynamic json) {
    _id = json['id'];
    _category = json['category'];
    _licenseNumber = json['licenseNumber'];
    _licenseWord = json['licenseWord'];
    _capcity = json['capcity'];
    _brand = json['brand'];
    _packageCapcity = json['packageCapcity'];
    _adsSidesNumber = json['adsSidesNumber'];
    _imageUrl = json['imageUrl'];
    _publicDriverId = json['publicDriverId'];
    _organizationId = json['organizationId'];
  }

  int? _id;
  String? _category;
  int? _licenseNumber;
  String? _licenseWord;
  int? _capcity;
  String? _brand;
  int? _packageCapcity;
  int? _adsSidesNumber;
  String? _imageUrl;
  String? _publicDriverId;
  dynamic _organizationId;
  PublicDriverVehicleModel copyWith({
    int? id,
    String? category,
    int? licenseNumber,
    String? licenseWord,
    int? capcity,
    String? brand,
    int? packageCapcity,
    int? adsSidesNumber,
    String? imageUrl,
    String? publicDriverId,
    dynamic organizationId,
  }) =>
      PublicDriverVehicleModel(
        id: id ?? _id,
        category: category ?? _category,
        licenseNumber: licenseNumber ?? _licenseNumber,
        licenseWord: licenseWord ?? _licenseWord,
        capcity: capcity ?? _capcity,
        brand: brand ?? _brand,
        packageCapcity: packageCapcity ?? _packageCapcity,
        adsSidesNumber: adsSidesNumber ?? _adsSidesNumber,
        imageUrl: imageUrl ?? _imageUrl,
        publicDriverId: publicDriverId ?? _publicDriverId,
        organizationId: organizationId ?? _organizationId,
      );
  int? get id => _id;
  String? get category => _category;
  int? get licenseNumber => _licenseNumber;
  String? get licenseWord => _licenseWord;
  int? get capcity => _capcity;
  String? get brand => _brand;
  int? get packageCapcity => _packageCapcity;
  int? get adsSidesNumber => _adsSidesNumber;
  String? get imageUrl => _imageUrl;
  String? get publicDriverId => _publicDriverId;
  dynamic get organizationId => _organizationId;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['category'] = _category;
    map['licenseNumber'] = _licenseNumber;
    map['licenseWord'] = _licenseWord;
    map['capcity'] = _capcity;
    map['brand'] = _brand;
    map['packageCapcity'] = _packageCapcity;
    map['adsSidesNumber'] = _adsSidesNumber;
    map['imageUrl'] = _imageUrl;
    map['publicDriverId'] = _publicDriverId;
    map['organizationId'] = _organizationId;
    return map;
  }

  @override
  String toString() {
    return 'PublicDriverVehicleModel{_id: $_id, _category: $_category, _licenseNumber: $_licenseNumber, _licenseWord: $_licenseWord, _capcity: $_capcity, _brand: $_brand, _packageCapcity: $_packageCapcity, _adsSidesNumber: $_adsSidesNumber, _imageUrl: $_imageUrl, _publicDriverId: $_publicDriverId, _organizationId: $_organizationId}';
  }
}
