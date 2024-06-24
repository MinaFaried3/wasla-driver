/// status : 200
/// isSuccess : true
/// message : null
/// data : {"id":76,"startDate":"2024-06-10T20:42:27.967","endDate":"2024-06-10T21:42:27.967","status":0,"acceptRequests":true,"acceptPackages":true,"startStationId":4,"startStation":{"stationId":4,"name":"طهطا","langtitude":"31.50580197570988","latitude":"26.76795280477549"},"endStationId":1,"endStation":{"stationId":1,"name":"سوهاج الجامعة القديمة","langtitude":"31.7077129000285","latitude":"26.56334141445074"},"reservedSeats":0,"isStart":false,"isActive":true,"latitude":null,"langtitude":null,"reservations":[{"id":20,"onRoad":true,"locationDescription":"string","customer":{"id":"578dcc60-f2f4-4d32-93c8-052c1fd956e6","fullName":"mekha safwat","photoUrl":"https://static.vecteezy.com/system/resources/thumbnails/009/292/244/small/default-avatar-icon-of-social-media-user-vector.jpg","phoneNumber":"01158927533","gender":0,"email":"aaa","birthdate":null}}],"packagesRequests":[]}

class CurrentTripResponse {
  CurrentTripResponse({
    num? status,
    bool? isSuccess,
    dynamic message,
    CurrentTripModel? data,
  }) {
    _status = status;
    _isSuccess = isSuccess;
    _message = message;
    _data = data;
  }

  CurrentTripResponse.fromJson(dynamic json) {
    _status = json['status'];
    _isSuccess = json['isSuccess'];
    _message = json['message'];
    _data =
        json['data'] != null ? CurrentTripModel.fromJson(json['data']) : null;
  }
  num? _status;
  bool? _isSuccess;
  dynamic _message;
  CurrentTripModel? _data;
  CurrentTripResponse copyWith({
    num? status,
    bool? isSuccess,
    dynamic message,
    CurrentTripModel? data,
  }) =>
      CurrentTripResponse(
        status: status ?? _status,
        isSuccess: isSuccess ?? _isSuccess,
        message: message ?? _message,
        data: data ?? _data,
      );
  num? get status => _status;
  bool? get isSuccess => _isSuccess;
  dynamic get message => _message;
  CurrentTripModel? get data => _data;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['status'] = _status;
    map['isSuccess'] = _isSuccess;
    map['message'] = _message;
    if (_data != null) {
      map['data'] = _data?.toJson();
    }
    return map;
  }
}

/// id : 76
/// startDate : "2024-06-10T20:42:27.967"
/// endDate : "2024-06-10T21:42:27.967"
/// status : 0
/// acceptRequests : true
/// acceptPackages : true
/// startStationId : 4
/// startStation : {"stationId":4,"name":"طهطا","langtitude":"31.50580197570988","latitude":"26.76795280477549"}
/// endStationId : 1
/// endStation : {"stationId":1,"name":"سوهاج الجامعة القديمة","langtitude":"31.7077129000285","latitude":"26.56334141445074"}
/// reservedSeats : 0
/// isStart : false
/// isActive : true
/// latitude : null
/// langtitude : null
/// reservations : [{"id":20,"onRoad":true,"locationDescription":"string","customer":{"id":"578dcc60-f2f4-4d32-93c8-052c1fd956e6","fullName":"mekha safwat","photoUrl":"https://static.vecteezy.com/system/resources/thumbnails/009/292/244/small/default-avatar-icon-of-social-media-user-vector.jpg","phoneNumber":"01158927533","gender":0,"email":"aaa","birthdate":null}}]
/// packagesRequests : []

class CurrentTripModel {
  CurrentTripModel({
    num? id,
    String? startDate,
    String? endDate,
    num? status,
    bool? acceptRequests,
    bool? acceptPackages,
    num? startStationId,
    StartStation? startStation,
    num? endStationId,
    EndStation? endStation,
    num? reservedSeats,
    bool? isStart,
    bool? isActive,
    dynamic latitude,
    dynamic langtitude,
    List<ReservationModel>? reservations,
    List<dynamic>? packagesRequests,
  }) {
    _id = id;
    _startDate = startDate;
    _endDate = endDate;
    _status = status;
    _acceptRequests = acceptRequests;
    _acceptPackages = acceptPackages;
    _startStationId = startStationId;
    _startStation = startStation;
    _endStationId = endStationId;
    _endStation = endStation;
    _reservedSeats = reservedSeats;
    _isStart = isStart;
    _isActive = isActive;
    _latitude = latitude;
    _langtitude = langtitude;
    _reservations = reservations;
    _packagesRequests = packagesRequests;
  }

  CurrentTripModel.fromJson(dynamic json) {
    _id = json['id'];
    _startDate = json['startDate'];
    _endDate = json['endDate'];
    _status = json['status'];
    _acceptRequests = json['acceptRequests'];
    _acceptPackages = json['acceptPackages'];
    _startStationId = json['startStationId'];
    _startStation = json['startStation'] != null
        ? StartStation.fromJson(json['startStation'])
        : null;
    _endStationId = json['endStationId'];
    _endStation = json['endStation'] != null
        ? EndStation.fromJson(json['endStation'])
        : null;
    _reservedSeats = json['reservedSeats'];
    _isStart = json['isStart'];
    _isActive = json['isActive'];
    _latitude = json['latitude'];
    _langtitude = json['langtitude'];
    if (json['reservations'] != null) {
      _reservations = [];
      json['reservations'].forEach((v) {
        _reservations?.add(ReservationModel.fromJson(v));
      });
    }
    if (json['packagesRequests'] != null) {
      _packagesRequests = [];
      json['packagesRequests'].forEach((v) {
        // _packagesRequests?.add(Dynamic.fromJson(v));
      });
    }
  }
  num? _id;
  String? _startDate;
  String? _endDate;
  num? _status;
  bool? _acceptRequests;
  bool? _acceptPackages;
  num? _startStationId;
  StartStation? _startStation;
  num? _endStationId;
  EndStation? _endStation;
  num? _reservedSeats;
  bool? _isStart;
  bool? _isActive;
  dynamic _latitude;
  dynamic _langtitude;
  List<ReservationModel>? _reservations;
  List<dynamic>? _packagesRequests;
  CurrentTripModel copyWith({
    num? id,
    String? startDate,
    String? endDate,
    num? status,
    bool? acceptRequests,
    bool? acceptPackages,
    num? startStationId,
    StartStation? startStation,
    num? endStationId,
    EndStation? endStation,
    num? reservedSeats,
    bool? isStart,
    bool? isActive,
    dynamic latitude,
    dynamic langtitude,
    List<ReservationModel>? reservations,
    List<dynamic>? packagesRequests,
  }) =>
      CurrentTripModel(
        id: id ?? _id,
        startDate: startDate ?? _startDate,
        endDate: endDate ?? _endDate,
        status: status ?? _status,
        acceptRequests: acceptRequests ?? _acceptRequests,
        acceptPackages: acceptPackages ?? _acceptPackages,
        startStationId: startStationId ?? _startStationId,
        startStation: startStation ?? _startStation,
        endStationId: endStationId ?? _endStationId,
        endStation: endStation ?? _endStation,
        reservedSeats: reservedSeats ?? _reservedSeats,
        isStart: isStart ?? _isStart,
        isActive: isActive ?? _isActive,
        latitude: latitude ?? _latitude,
        langtitude: langtitude ?? _langtitude,
        reservations: reservations ?? _reservations,
        packagesRequests: packagesRequests ?? _packagesRequests,
      );
  num? get id => _id;
  String? get startDate => _startDate;
  String? get endDate => _endDate;
  num? get status => _status;
  bool? get acceptRequests => _acceptRequests;
  bool? get acceptPackages => _acceptPackages;
  num? get startStationId => _startStationId;
  StartStation? get startStation => _startStation;
  num? get endStationId => _endStationId;
  EndStation? get endStation => _endStation;
  num? get reservedSeats => _reservedSeats;
  bool? get isStart => _isStart;
  bool? get isActive => _isActive;
  dynamic get latitude => _latitude;
  dynamic get langtitude => _langtitude;
  List<ReservationModel>? get reservations => _reservations;
  List<dynamic>? get packagesRequests => _packagesRequests;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['startDate'] = _startDate;
    map['endDate'] = _endDate;
    map['status'] = _status;
    map['acceptRequests'] = _acceptRequests;
    map['acceptPackages'] = _acceptPackages;
    map['startStationId'] = _startStationId;
    if (_startStation != null) {
      map['startStation'] = _startStation?.toJson();
    }
    map['endStationId'] = _endStationId;
    if (_endStation != null) {
      map['endStation'] = _endStation?.toJson();
    }
    map['reservedSeats'] = _reservedSeats;
    map['isStart'] = _isStart;
    map['isActive'] = _isActive;
    map['latitude'] = _latitude;
    map['langtitude'] = _langtitude;
    if (_reservations != null) {
      map['reservations'] = _reservations?.map((v) => v.toJson()).toList();
    }
    if (_packagesRequests != null) {
      map['packagesRequests'] =
          _packagesRequests?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}

/// id : 20
/// onRoad : true
/// locationDescription : "string"
/// customer : {"id":"578dcc60-f2f4-4d32-93c8-052c1fd956e6","fullName":"mekha safwat","photoUrl":"https://static.vecteezy.com/system/resources/thumbnails/009/292/244/small/default-avatar-icon-of-social-media-user-vector.jpg","phoneNumber":"01158927533","gender":0,"email":"aaa","birthdate":null}

class ReservationModel {
  ReservationModel({
    num? id,
    bool? onRoad,
    String? locationDescription,
    Customer? customer,
  }) {
    _id = id;
    _onRoad = onRoad;
    _locationDescription = locationDescription;
    _customer = customer;
  }

  ReservationModel.fromJson(dynamic json) {
    _id = json['id'];
    _onRoad = json['onRoad'];
    _locationDescription = json['locationDescription'];
    _customer =
        json['customer'] != null ? Customer.fromJson(json['customer']) : null;
  }
  num? _id;
  bool? _onRoad;
  String? _locationDescription;
  Customer? _customer;
  ReservationModel copyWith({
    num? id,
    bool? onRoad,
    String? locationDescription,
    Customer? customer,
  }) =>
      ReservationModel(
        id: id ?? _id,
        onRoad: onRoad ?? _onRoad,
        locationDescription: locationDescription ?? _locationDescription,
        customer: customer ?? _customer,
      );
  num? get id => _id;
  bool? get onRoad => _onRoad;
  String? get locationDescription => _locationDescription;
  Customer? get customer => _customer;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['onRoad'] = _onRoad;
    map['locationDescription'] = _locationDescription;
    if (_customer != null) {
      map['customer'] = _customer?.toJson();
    }
    return map;
  }
}

/// id : "578dcc60-f2f4-4d32-93c8-052c1fd956e6"
/// fullName : "mekha safwat"
/// photoUrl : "https://static.vecteezy.com/system/resources/thumbnails/009/292/244/small/default-avatar-icon-of-social-media-user-vector.jpg"
/// phoneNumber : "01158927533"
/// gender : 0
/// email : "aaa"
/// birthdate : null

class Customer {
  Customer({
    String? id,
    String? fullName,
    String? photoUrl,
    String? phoneNumber,
    num? gender,
    String? email,
    dynamic birthdate,
  }) {
    _id = id;
    _fullName = fullName;
    _photoUrl = photoUrl;
    _phoneNumber = phoneNumber;
    _gender = gender;
    _email = email;
    _birthdate = birthdate;
  }

  Customer.fromJson(dynamic json) {
    _id = json['id'];
    _fullName = json['fullName'];
    _photoUrl = json['photoUrl'];
    _phoneNumber = json['phoneNumber'];
    _gender = json['gender'];
    _email = json['email'];
    _birthdate = json['birthdate'];
  }
  String? _id;
  String? _fullName;
  String? _photoUrl;
  String? _phoneNumber;
  num? _gender;
  String? _email;
  dynamic _birthdate;
  Customer copyWith({
    String? id,
    String? fullName,
    String? photoUrl,
    String? phoneNumber,
    num? gender,
    String? email,
    dynamic birthdate,
  }) =>
      Customer(
        id: id ?? _id,
        fullName: fullName ?? _fullName,
        photoUrl: photoUrl ?? _photoUrl,
        phoneNumber: phoneNumber ?? _phoneNumber,
        gender: gender ?? _gender,
        email: email ?? _email,
        birthdate: birthdate ?? _birthdate,
      );
  String? get id => _id;
  String? get fullName => _fullName;
  String? get photoUrl => _photoUrl;
  String? get phoneNumber => _phoneNumber;
  num? get gender => _gender;
  String? get email => _email;
  dynamic get birthdate => _birthdate;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['fullName'] = _fullName;
    map['photoUrl'] = _photoUrl;
    map['phoneNumber'] = _phoneNumber;
    map['gender'] = _gender;
    map['email'] = _email;
    map['birthdate'] = _birthdate;
    return map;
  }
}

/// stationId : 1
/// name : "سوهاج الجامعة القديمة"
/// langtitude : "31.7077129000285"
/// latitude : "26.56334141445074"

class EndStation {
  EndStation({
    num? stationId,
    String? name,
    String? langtitude,
    String? latitude,
  }) {
    _stationId = stationId;
    _name = name;
    _langtitude = langtitude;
    _latitude = latitude;
  }

  EndStation.fromJson(dynamic json) {
    _stationId = json['stationId'];
    _name = json['name'];
    _langtitude = json['langtitude'];
    _latitude = json['latitude'];
  }
  num? _stationId;
  String? _name;
  String? _langtitude;
  String? _latitude;
  EndStation copyWith({
    num? stationId,
    String? name,
    String? langtitude,
    String? latitude,
  }) =>
      EndStation(
        stationId: stationId ?? _stationId,
        name: name ?? _name,
        langtitude: langtitude ?? _langtitude,
        latitude: latitude ?? _latitude,
      );
  num? get stationId => _stationId;
  String? get name => _name;
  String? get langtitude => _langtitude;
  String? get latitude => _latitude;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['stationId'] = _stationId;
    map['name'] = _name;
    map['langtitude'] = _langtitude;
    map['latitude'] = _latitude;
    return map;
  }
}

/// stationId : 4
/// name : "طهطا"
/// langtitude : "31.50580197570988"
/// latitude : "26.76795280477549"

class StartStation {
  StartStation({
    num? stationId,
    String? name,
    String? langtitude,
    String? latitude,
  }) {
    _stationId = stationId;
    _name = name;
    _langtitude = langtitude;
    _latitude = latitude;
  }

  StartStation.fromJson(dynamic json) {
    _stationId = json['stationId'];
    _name = json['name'];
    _langtitude = json['langtitude'];
    _latitude = json['latitude'];
  }
  num? _stationId;
  String? _name;
  String? _langtitude;
  String? _latitude;
  StartStation copyWith({
    num? stationId,
    String? name,
    String? langtitude,
    String? latitude,
  }) =>
      StartStation(
        stationId: stationId ?? _stationId,
        name: name ?? _name,
        langtitude: langtitude ?? _langtitude,
        latitude: latitude ?? _latitude,
      );
  num? get stationId => _stationId;
  String? get name => _name;
  String? get langtitude => _langtitude;
  String? get latitude => _latitude;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['stationId'] = _stationId;
    map['name'] = _name;
    map['langtitude'] = _langtitude;
    map['latitude'] = _latitude;
    return map;
  }
}
