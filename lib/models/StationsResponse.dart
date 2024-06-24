/// status : 200
/// isSuccess : true
/// message : null
/// data : [{"stationId":1,"name":"سوهاج الجامعة القديمة","langtitude":"31.7077129000285","latitude":"26.56334141445074"},{"stationId":2,"name":"سوهاج موقف بحري","langtitude":"31.686453736301857","latitude":"26.572747701800438"},{"stationId":4,"name":"طهطا","langtitude":"31.50580197570988","latitude":"26.76795280477549"},{"stationId":5,"name":"المراغة","langtitude":"31.603884087776446","latitude":"26.6956550362573"},{"stationId":6,"name":"جرجا","langtitude":"31.888341913915834","latitude":"26.35186547935427"},{"stationId":7,"name":"ساقلته","langtitude":"31.66982260632553","latitude":"26.662988069899384"},{"stationId":8,"name":"المنشاة","langtitude":"31.796837152116144","latitude":"26.475706529255657"},{"stationId":9,"name":"الكوامل","langtitude":"31.673494587589047","latitude":"26.461793598231584"},{"stationId":10,"name":"طما","langtitude":"31.44163495141441","latitude":"26.89844216059147"},{"stationId":12,"name":"البلينا","langtitude":"31.995817641317664","latitude":"26.23243491071413"},{"stationId":13,"name":"العسيرات","langtitude":"31.886832905415307","latitude":"26.33877238287046"},{"stationId":14,"name":"الكوثر","langtitude":"31.77369792311729","latitude":"26.61644988720237"},{"stationId":15,"name":"سوهاج الجديده","langtitude":"31.66265151762022","latitude":"26.428669128211606"}]

class StationsResponse {
  StationsResponse({
    num? status,
    bool? isSuccess,
    dynamic message,
    List<Station>? data,
  }) {
    _status = status;
    _isSuccess = isSuccess;
    _message = message;
    _data = data;
  }

  StationsResponse.fromJson(dynamic json) {
    _status = json['status'];
    _isSuccess = json['isSuccess'];
    _message = json['message'];
    if (json['data'] != null) {
      _data = [];
      json['data'].forEach((v) {
        _data?.add(Station.fromJson(v));
      });
    }
  }
  num? _status;
  bool? _isSuccess;
  dynamic _message;
  List<Station>? _data;
  StationsResponse copyWith({
    num? status,
    bool? isSuccess,
    dynamic message,
    List<Station>? data,
  }) =>
      StationsResponse(
        status: status ?? _status,
        isSuccess: isSuccess ?? _isSuccess,
        message: message ?? _message,
        data: data ?? _data,
      );
  num? get status => _status;
  bool? get isSuccess => _isSuccess;
  dynamic get message => _message;
  List<Station>? get data => _data;

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

/// stationId : 1
/// name : "سوهاج الجامعة القديمة"
/// langtitude : "31.7077129000285"
/// latitude : "26.56334141445074"

class Station {
  Station({
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

  Station.fromJson(dynamic json) {
    _stationId = json['stationId'];
    _name = json['name'];
    _langtitude = json['langtitude'];
    _latitude = json['latitude'];
  }
  num? _stationId;
  String? _name;
  String? _langtitude;
  String? _latitude;
  Station copyWith({
    num? stationId,
    String? name,
    String? langtitude,
    String? latitude,
  }) =>
      Station(
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
