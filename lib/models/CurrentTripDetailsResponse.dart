/// status : 200
/// isSuccess : true
/// message : null
/// data : {"status":1,"totalTripSeats":14,"reserverdSeats":0}

class CurrentTripDetailsResponse {
  CurrentTripDetailsResponse({
    int? status,
    bool? isSuccess,
    dynamic message,
    CurrentTripDetailsModel? data,
  }) {
    _status = status;
    _isSuccess = isSuccess;
    _message = message;
    _data = data;
  }

  CurrentTripDetailsResponse.fromJson(dynamic json) {
    _status = json['status'];
    _isSuccess = json['isSuccess'];
    _message = json['message'];
    _data = json['data'] != null
        ? CurrentTripDetailsModel.fromJson(json['data'])
        : null;
  }
  int? _status;
  bool? _isSuccess;
  dynamic _message;
  CurrentTripDetailsModel? _data;
  CurrentTripDetailsResponse copyWith({
    int? status,
    bool? isSuccess,
    dynamic message,
    CurrentTripDetailsModel? data,
  }) =>
      CurrentTripDetailsResponse(
        status: status ?? _status,
        isSuccess: isSuccess ?? _isSuccess,
        message: message ?? _message,
        data: data ?? _data,
      );
  int? get status => _status;
  bool? get isSuccess => _isSuccess;
  dynamic get message => _message;
  CurrentTripDetailsModel? get data => _data;

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

/// status : 1
/// totalTripSeats : 14
/// reserverdSeats : 0

class CurrentTripDetailsModel {
  CurrentTripDetailsModel({
    int? status,
    int? totalTripSeats,
    int? reserverdSeats,
  }) {
    _status = status;
    _totalTripSeats = totalTripSeats;
    _reserverdSeats = reserverdSeats;
  }

  CurrentTripDetailsModel.fromJson(dynamic json) {
    _status = json['status'];
    _totalTripSeats = json['totalTripSeats'];
    _reserverdSeats = json['reserverdSeats'];
  }
  int? _status;
  int? _totalTripSeats;
  int? _reserverdSeats;
  CurrentTripDetailsModel copyWith({
    int? status,
    int? totalTripSeats,
    int? reserverdSeats,
  }) =>
      CurrentTripDetailsModel(
        status: status ?? _status,
        totalTripSeats: totalTripSeats ?? _totalTripSeats,
        reserverdSeats: reserverdSeats ?? _reserverdSeats,
      );
  int? get status => _status;
  int? get totalTripSeats => _totalTripSeats;
  int? get reserverdSeats => _reserverdSeats;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['status'] = _status;
    map['totalTripSeats'] = _totalTripSeats;
    map['reserverdSeats'] = _reserverdSeats;
    return map;
  }
}
