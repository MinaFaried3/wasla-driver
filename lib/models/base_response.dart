class BaseResponse {
  BaseResponse({
    this.status,
    this.isSuccess,
    this.message,
  });

  void fromJson(dynamic json) {
    status = json['status'];
    isSuccess = json['isSuccess'];
    message = json['message'];
  }

  factory BaseResponse.fromJson(Map<String, dynamic> json) {
    return BaseResponse(
      status: int.parse(json["status"]),
      isSuccess: json["isSuccess"].toLowerCase() == 'true',
      message: json["message"],
    );
  }

  int? status;
  bool? isSuccess;
  String? message;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['status'] = status;
    map['isSuccess'] = isSuccess;
    map['message'] = message;
    return map;
  }
}
