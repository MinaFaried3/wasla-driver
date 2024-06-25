import 'package:wasla_driver/models/base_response.dart';

/// status : 200
/// isSuccess : true
/// message : null
/// data : [{"tripId":29,"tripStartTime":"2:34 AM","tripEndTime":null,"tripDay":"Monday","tripDate":"06/10/2024","startStation":"طهطا","endStation":"سوهاج الجامعة القديمة","isStart":false},{"tripId":42,"tripStartTime":"4:34 AM","tripEndTime":null,"tripDay":"Monday","tripDate":"06/10/2024","startStation":"طهطا","endStation":"سوهاج الجامعة القديمة","isStart":false},{"tripId":43,"tripStartTime":"4:42 AM","tripEndTime":null,"tripDay":"Monday","tripDate":"06/10/2024","startStation":"طهطا","endStation":"سوهاج الجامعة القديمة","isStart":false},{"tripId":50,"tripStartTime":"11:00 AM","tripEndTime":null,"tripDay":"Monday","tripDate":"06/10/2024","startStation":"طهطا","endStation":"سوهاج الجامعة القديمة","isStart":false},{"tripId":76,"tripStartTime":"8:42 PM","tripEndTime":null,"tripDay":"Monday","tripDate":"06/10/2024","startStation":"طهطا","endStation":"سوهاج الجامعة القديمة","isStart":false}]

class TripsHistoryByDateResponse extends BaseResponse {
  TripsHistoryByDateResponse({
    super.status,
    super.isSuccess,
    super.message,
    List<TripHistoryByDateModel>? data,
  }) {
    _data = data;
  }

  TripsHistoryByDateResponse.fromJson(dynamic json) {
    super.fromJson(json);
    if (json['data'] != null) {
      _data = [];
      json['data'].forEach((v) {
        _data?.add(TripHistoryByDateModel.fromJson(v));
      });
    }
  }

  List<TripHistoryByDateModel>? _data;
  TripsHistoryByDateResponse copyWith({
    int? status,
    bool? isSuccess,
    dynamic message,
    List<TripHistoryByDateModel>? data,
  }) =>
      TripsHistoryByDateResponse(
        status: status ?? super.status,
        isSuccess: isSuccess ?? super.isSuccess,
        message: message ?? super.message,
        data: data ?? _data,
      );

  List<TripHistoryByDateModel>? get data => _data;

  @override
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_data != null) {
      map['data'] = _data?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}

/// tripId : 29
/// tripStartTime : "2:34 AM"
/// tripEndTime : null
/// tripDay : "Monday"
/// tripDate : "06/10/2024"
/// startStation : "طهطا"
/// endStation : "سوهاج الجامعة القديمة"
/// isStart : false

class TripHistoryByDateModel {
  TripHistoryByDateModel({
    int? tripId,
    String? tripStartTime,
    dynamic tripEndTime,
    String? tripDay,
    String? tripDate,
    String? startStation,
    String? endStation,
    bool? isStart,
  }) {
    _tripId = tripId;
    _tripStartTime = tripStartTime;
    _tripEndTime = tripEndTime;
    _tripDay = tripDay;
    _tripDate = tripDate;
    _startStation = startStation;
    _endStation = endStation;
    _isStart = isStart;
  }

  TripHistoryByDateModel.fromJson(dynamic json) {
    _tripId = json['tripId'];
    _tripStartTime = json['tripStartTime'];
    _tripEndTime = json['tripEndTime'];
    _tripDay = json['tripDay'];
    _tripDate = json['tripDate'];
    _startStation = json['startStation'];
    _endStation = json['endStation'];
    _isStart = json['isStart'];
  }
  int? _tripId;
  String? _tripStartTime;
  dynamic _tripEndTime;
  String? _tripDay;
  String? _tripDate;
  String? _startStation;
  String? _endStation;
  bool? _isStart;
  TripHistoryByDateModel copyWith({
    int? tripId,
    String? tripStartTime,
    dynamic tripEndTime,
    String? tripDay,
    String? tripDate,
    String? startStation,
    String? endStation,
    bool? isStart,
  }) =>
      TripHistoryByDateModel(
        tripId: tripId ?? _tripId,
        tripStartTime: tripStartTime ?? _tripStartTime,
        tripEndTime: tripEndTime ?? _tripEndTime,
        tripDay: tripDay ?? _tripDay,
        tripDate: tripDate ?? _tripDate,
        startStation: startStation ?? _startStation,
        endStation: endStation ?? _endStation,
        isStart: isStart ?? _isStart,
      );
  int? get tripId => _tripId;
  String? get tripStartTime => _tripStartTime;
  dynamic get tripEndTime => _tripEndTime;
  String? get tripDay => _tripDay;
  String? get tripDate => _tripDate;
  String? get startStation => _startStation;
  String? get endStation => _endStation;
  bool? get isStart => _isStart;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['tripId'] = _tripId;
    map['tripStartTime'] = _tripStartTime;
    map['tripEndTime'] = _tripEndTime;
    map['tripDay'] = _tripDay;
    map['tripDate'] = _tripDate;
    map['startStation'] = _startStation;
    map['endStation'] = _endStation;
    map['isStart'] = _isStart;
    return map;
  }
}
