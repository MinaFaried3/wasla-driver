/// status : 200
/// isSuccess : true
/// message : null
/// data : 3

class TripStatusResponse {
  TripStatusResponse({
    int? status,
    bool? isSuccess,
    dynamic message,
    int? data,
  }) {
    _status = status;
    _isSuccess = isSuccess;
    _message = message;
    _data = data;
  }

  TripStatusResponse.fromJson(dynamic json) {
    _status = json['status'];
    _isSuccess = json['isSuccess'];
    _message = json['message'];
    _data = json['data'];
  }
  int? _status;
  bool? _isSuccess;
  dynamic _message;
  int? _data;
  TripStatusResponse copyWith({
    int? status,
    bool? isSuccess,
    dynamic message,
    int? data,
  }) =>
      TripStatusResponse(
        status: status ?? _status,
        isSuccess: isSuccess ?? _isSuccess,
        message: message ?? _message,
        data: data ?? _data,
      );
  int? get status => _status;
  bool? get isSuccess => _isSuccess;
  dynamic get message => _message;
  int? get data => _data;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['status'] = _status;
    map['isSuccess'] = _isSuccess;
    map['message'] = _message;
    map['data'] = _data;
    return map;
  }
}
