/// startStationId : 5
/// endStationId : 10
/// startDate : "2024-06-24T10:41:54.625Z"
/// endDate : "2024-06-24T10:41:54.625Z"

class CreatePublicTripRequest {
  CreatePublicTripRequest({
    num? startStationId,
    num? endStationId,
    String? startDate,
    String? endDate,
  }) {
    _startStationId = startStationId;
    _endStationId = endStationId;
    _startDate = startDate;
    _endDate = endDate;
  }

  CreatePublicTripRequest.fromJson(dynamic json) {
    _startStationId = json['startStationId'];
    _endStationId = json['endStationId'];
    _startDate = json['startDate'];
    _endDate = json['endDate'];
  }
  num? _startStationId;
  num? _endStationId;
  String? _startDate;
  String? _endDate;
  CreatePublicTripRequest copyWith({
    num? startStationId,
    num? endStationId,
    String? startDate,
    String? endDate,
  }) =>
      CreatePublicTripRequest(
        startStationId: startStationId ?? _startStationId,
        endStationId: endStationId ?? _endStationId,
        startDate: startDate ?? _startDate,
        endDate: endDate ?? _endDate,
      );
  num? get startStationId => _startStationId;
  num? get endStationId => _endStationId;
  String? get startDate => _startDate;
  String? get endDate => _endDate;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['startStationId'] = _startStationId;
    map['endStationId'] = _endStationId;
    map['startDate'] = _startDate;
    map['endDate'] = _endDate;
    return map;
  }
}
