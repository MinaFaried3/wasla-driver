/// status : 200
/// isSuccess : true
/// message : null
/// data : [{"id":24,"customerId":"e5fddf6f-5049-43fa-b136-31cbd5016afc","onRoad":false,"locationDescription":"string","customer":{"id":"e5fddf6f-5049-43fa-b136-31cbd5016afc","fullName":"tena atef","photoUrl":"https://static.vecteezy.com/system/resources/thumbnails/009/292/244/small/default-avatar-icon-of-social-media-user-vector.jpg","gender":0,"birthdate":null},"publicDriverTripId":86},{"id":25,"customerId":"ca5c6ced-bdb1-4c06-bd3d-dda7d700a966","onRoad":true,"locationDescription":"string","customer":{"id":"ca5c6ced-bdb1-4c06-bd3d-dda7d700a966","fullName":"Osama Rafat","photoUrl":"https://wasla.runasp.net/Images/4ef8e33b-cd27-4898-9ccd-19b5be6747f9.png","gender":0,"birthdate":null},"publicDriverTripId":86}]

class CurrentPassengersTripsResponse {
  CurrentPassengersTripsResponse({
    int? status,
    bool? isSuccess,
    dynamic message,
    List<CurrentPassengersTripsModel>? data,
  }) {
    _status = status;
    _isSuccess = isSuccess;
    _message = message;
    _data = data;
  }

  CurrentPassengersTripsResponse.fromJson(dynamic json) {
    _status = json['status'];
    _isSuccess = json['isSuccess'];
    _message = json['message'];
    if (json['data'] != null) {
      _data = [];
      json['data'].forEach((v) {
        _data?.add(CurrentPassengersTripsModel.fromJson(v));
      });
    }
  }
  int? _status;
  bool? _isSuccess;
  dynamic _message;
  List<CurrentPassengersTripsModel>? _data;
  CurrentPassengersTripsResponse copyWith({
    int? status,
    bool? isSuccess,
    dynamic message,
    List<CurrentPassengersTripsModel>? data,
  }) =>
      CurrentPassengersTripsResponse(
        status: status ?? _status,
        isSuccess: isSuccess ?? _isSuccess,
        message: message ?? _message,
        data: data ?? _data,
      );
  int? get status => _status;
  bool? get isSuccess => _isSuccess;
  dynamic get message => _message;
  List<CurrentPassengersTripsModel>? get data => _data;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['status'] = _status;
    map['isSuccess'] = _isSuccess;
    map['message'] = _message;
    if (_data != null) {
      map['data'] = _data?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}

/// id : 24
/// customerId : "e5fddf6f-5049-43fa-b136-31cbd5016afc"
/// onRoad : false
/// locationDescription : "string"
/// customer : {"id":"e5fddf6f-5049-43fa-b136-31cbd5016afc","fullName":"tena atef","photoUrl":"https://static.vecteezy.com/system/resources/thumbnails/009/292/244/small/default-avatar-icon-of-social-media-user-vector.jpg","gender":0,"birthdate":null}
/// publicDriverTripId : 86

class CurrentPassengersTripsModel {
  CurrentPassengersTripsModel({
    int? id,
    String? customerId,
    bool? onRoad,
    String? locationDescription,
    Customer? customer,
    int? publicDriverTripId,
  }) {
    _id = id;
    _customerId = customerId;
    _onRoad = onRoad;
    _locationDescription = locationDescription;
    _customer = customer;
    _publicDriverTripId = publicDriverTripId;
  }

  CurrentPassengersTripsModel.fromJson(dynamic json) {
    _id = json['id'];
    _customerId = json['customerId'];
    _onRoad = json['onRoad'];
    _locationDescription = json['locationDescription'];
    _customer =
        json['customer'] != null ? Customer.fromJson(json['customer']) : null;
    _publicDriverTripId = json['publicDriverTripId'];
  }
  int? _id;
  String? _customerId;
  bool? _onRoad;
  String? _locationDescription;
  Customer? _customer;
  int? _publicDriverTripId;
  CurrentPassengersTripsModel copyWith({
    int? id,
    String? customerId,
    bool? onRoad,
    String? locationDescription,
    Customer? customer,
    int? publicDriverTripId,
  }) =>
      CurrentPassengersTripsModel(
        id: id ?? _id,
        customerId: customerId ?? _customerId,
        onRoad: onRoad ?? _onRoad,
        locationDescription: locationDescription ?? _locationDescription,
        customer: customer ?? _customer,
        publicDriverTripId: publicDriverTripId ?? _publicDriverTripId,
      );
  int? get id => _id;
  String? get customerId => _customerId;
  bool? get onRoad => _onRoad;
  String? get locationDescription => _locationDescription;
  Customer? get customer => _customer;
  int? get publicDriverTripId => _publicDriverTripId;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['customerId'] = _customerId;
    map['onRoad'] = _onRoad;
    map['locationDescription'] = _locationDescription;
    if (_customer != null) {
      map['customer'] = _customer?.toJson();
    }
    map['publicDriverTripId'] = _publicDriverTripId;
    return map;
  }
}

/// id : "e5fddf6f-5049-43fa-b136-31cbd5016afc"
/// fullName : "tena atef"
/// photoUrl : "https://static.vecteezy.com/system/resources/thumbnails/009/292/244/small/default-avatar-icon-of-social-media-user-vector.jpg"
/// gender : 0
/// birthdate : null

class Customer {
  Customer({
    String? id,
    String? fullName,
    String? photoUrl,
    int? gender,
    dynamic birthdate,
  }) {
    _id = id;
    _fullName = fullName;
    _photoUrl = photoUrl;
    _gender = gender;
    _birthdate = birthdate;
  }

  Customer.fromJson(dynamic json) {
    _id = json['id'];
    _fullName = json['fullName'];
    _photoUrl = json['photoUrl'];
    _gender = json['gender'];
    _birthdate = json['birthdate'];
  }
  String? _id;
  String? _fullName;
  String? _photoUrl;
  int? _gender;
  dynamic _birthdate;
  Customer copyWith({
    String? id,
    String? fullName,
    String? photoUrl,
    int? gender,
    dynamic birthdate,
  }) =>
      Customer(
        id: id ?? _id,
        fullName: fullName ?? _fullName,
        photoUrl: photoUrl ?? _photoUrl,
        gender: gender ?? _gender,
        birthdate: birthdate ?? _birthdate,
      );
  String? get id => _id;
  String? get fullName => _fullName;
  String? get photoUrl => _photoUrl;
  int? get gender => _gender;
  dynamic get birthdate => _birthdate;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['fullName'] = _fullName;
    map['photoUrl'] = _photoUrl;
    map['gender'] = _gender;
    map['birthdate'] = _birthdate;
    return map;
  }
}
