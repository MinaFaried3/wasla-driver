/// status : 200
/// isSuccess : true
/// message : "Login success"
/// data : {"licenseImageUrl":"https://wasla.runasp.net/Images/48445e10-e6f4-47f5-8060-2a88e97c90ee.jpg","licenseNum":"45454546655465","driverPermissions":null,"orgainzation":null,"trips":null,"rates":null,"firstName":"Mina","lastName":"asd","photoUrl":"https://wasla.runasp.net/Images/cd10828d-423f-45c7-b331-419f4ff901ce.jpg","isAuthenticated":true,"connectionData":{"email":"mosd@ds.com","phone":"02135664565","emailConfirmed":false,"phoneConfirmed":false},"userId":"81787b1a-6ae5-4526-a751-8c863d79862c","userName":"aliali","role":"PublicDriver","tokensData":{"token":"eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJhbGlhbGkiLCJqdGkiOiI2ZjhjZjgwOS0yMjk3LTRjMmYtYjdkZi1hOTg2OTZkZTdjZDgiLCJ1aWQiOiI4MTc4N2IxYS02YWU1LTQ1MjYtYTc1MS04Yzg2M2Q3OTg2MmMiLCJyb2xlcyI6IlB1YmxpY0RyaXZlciIsImV4cCI6MTcxODgzMzM0NSwiaXNzIjoiU2VjdXJlQXBpIiwiYXVkIjoiU2VjdXJlQXBpVXNlciJ9.Py5iqMYaHIXsOTqaZgKhAOjTaRcRFCmhxKbooWLt280","tokenExpiryDate":"2024-06-19T21:42:25Z","refreshToken":"gnTnNY5SnpIuG5EvUQpXDAaOeNoIqgsnzGfGnMgbDLc=","refTokenExpiryDate":"2024-06-24T21:42:25.957019Z"}}

class PublicDriverResponse {
  PublicDriverResponse({
    num? status,
    bool? isSuccess,
    String? message,
    PublicDriverModel? data,
  }) {
    _status = status;
    _isSuccess = isSuccess;
    _message = message;
    _data = data;
  }

  PublicDriverResponse.fromJson(dynamic json) {
    _status = json['status'];
    _isSuccess = json['isSuccess'];
    _message = json['message'];
    _data =
        json['data'] != null ? PublicDriverModel.fromJson(json['data']) : null;
  }
  num? _status;
  bool? _isSuccess;
  String? _message;
  PublicDriverModel? _data;
  PublicDriverResponse copyWith({
    num? status,
    bool? isSuccess,
    String? message,
    PublicDriverModel? data,
  }) =>
      PublicDriverResponse(
        status: status ?? _status,
        isSuccess: isSuccess ?? _isSuccess,
        message: message ?? _message,
        data: data ?? _data,
      );
  num? get status => _status;
  bool? get isSuccess => _isSuccess;
  String? get message => _message;
  PublicDriverModel? get data => _data;

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

/// licenseImageUrl : "https://wasla.runasp.net/Images/48445e10-e6f4-47f5-8060-2a88e97c90ee.jpg"
/// licenseNum : "45454546655465"
/// driverPermissions : null
/// orgainzation : null
/// trips : null
/// rates : null
/// firstName : "Mina"
/// lastName : "asd"
/// photoUrl : "https://wasla.runasp.net/Images/cd10828d-423f-45c7-b331-419f4ff901ce.jpg"
/// isAuthenticated : true
/// connectionData : {"email":"mosd@ds.com","phone":"02135664565","emailConfirmed":false,"phoneConfirmed":false}
/// userId : "81787b1a-6ae5-4526-a751-8c863d79862c"
/// userName : "aliali"
/// role : "PublicDriver"
/// tokensData : {"token":"eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJhbGlhbGkiLCJqdGkiOiI2ZjhjZjgwOS0yMjk3LTRjMmYtYjdkZi1hOTg2OTZkZTdjZDgiLCJ1aWQiOiI4MTc4N2IxYS02YWU1LTQ1MjYtYTc1MS04Yzg2M2Q3OTg2MmMiLCJyb2xlcyI6IlB1YmxpY0RyaXZlciIsImV4cCI6MTcxODgzMzM0NSwiaXNzIjoiU2VjdXJlQXBpIiwiYXVkIjoiU2VjdXJlQXBpVXNlciJ9.Py5iqMYaHIXsOTqaZgKhAOjTaRcRFCmhxKbooWLt280","tokenExpiryDate":"2024-06-19T21:42:25Z","refreshToken":"gnTnNY5SnpIuG5EvUQpXDAaOeNoIqgsnzGfGnMgbDLc=","refTokenExpiryDate":"2024-06-24T21:42:25.957019Z"}

class PublicDriverModel {
  PublicDriverModel({
    String? licenseImageUrl,
    String? licenseNum,
    dynamic driverPermissions,
    dynamic orgainzation,
    dynamic trips,
    dynamic rates,
    String? firstName,
    String? lastName,
    String? photoUrl,
    bool? isAuthenticated,
    Connection? connectionData,
    String? userId,
    String? userName,
    String? role,
    Tokens? tokensData,
  }) {
    _licenseImageUrl = licenseImageUrl;
    _licenseNum = licenseNum;
    _driverPermissions = driverPermissions;
    _orgainzation = orgainzation;
    _trips = trips;
    _rates = rates;
    _firstName = firstName;
    _lastName = lastName;
    _photoUrl = photoUrl;
    _isAuthenticated = isAuthenticated;
    _connectionData = connectionData;
    _userId = userId;
    _userName = userName;
    _role = role;
    _tokensData = tokensData;
  }

  PublicDriverModel.fromJson(dynamic json) {
    _licenseImageUrl = json['licenseImageUrl'];
    _licenseNum = json['licenseNum'];
    _driverPermissions = json['driverPermissions'];
    _orgainzation = json['orgainzation'];
    _trips = json['trips'];
    _rates = json['rates'];
    _firstName = json['firstName'];
    _lastName = json['lastName'];
    _photoUrl = json['photoUrl'];
    _isAuthenticated = json['isAuthenticated'];
    _connectionData = json['connectionData'] != null
        ? Connection.fromJson(json['connectionData'])
        : null;
    _userId = json['userId'];
    _userName = json['userName'];
    _role = json['role'];
    _tokensData =
        json['tokensData'] != null ? Tokens.fromJson(json['tokensData']) : null;
  }

  @override
  String toString() {
    return 'PublicDriverModel{_licenseImageUrl: $_licenseImageUrl, _licenseNum: $_licenseNum, _driverPermissions: $_driverPermissions, _orgainzation: $_orgainzation, _trips: $_trips, _rates: $_rates, _firstName: $_firstName, _lastName: $_lastName, _photoUrl: $_photoUrl, _isAuthenticated: $_isAuthenticated, _connectionData: $_connectionData, _userId: $_userId, _userName: $_userName, _role: $_role, _tokensData: $_tokensData}';
  }

  String? _licenseImageUrl;
  String? _licenseNum;
  dynamic _driverPermissions;
  dynamic _orgainzation;
  dynamic _trips;
  dynamic _rates;
  String? _firstName;
  String? _lastName;
  String? _photoUrl;
  bool? _isAuthenticated;
  Connection? _connectionData;
  String? _userId;
  String? _userName;
  String? _role;
  Tokens? _tokensData;
  PublicDriverModel copyWith({
    String? licenseImageUrl,
    String? licenseNum,
    dynamic driverPermissions,
    dynamic orgainzation,
    dynamic trips,
    dynamic rates,
    String? firstName,
    String? lastName,
    String? photoUrl,
    bool? isAuthenticated,
    Connection? connectionData,
    String? userId,
    String? userName,
    String? role,
    Tokens? tokensData,
  }) =>
      PublicDriverModel(
        licenseImageUrl: licenseImageUrl ?? _licenseImageUrl,
        licenseNum: licenseNum ?? _licenseNum,
        driverPermissions: driverPermissions ?? _driverPermissions,
        orgainzation: orgainzation ?? _orgainzation,
        trips: trips ?? _trips,
        rates: rates ?? _rates,
        firstName: firstName ?? _firstName,
        lastName: lastName ?? _lastName,
        photoUrl: photoUrl ?? _photoUrl,
        isAuthenticated: isAuthenticated ?? _isAuthenticated,
        connectionData: connectionData ?? _connectionData,
        userId: userId ?? _userId,
        userName: userName ?? _userName,
        role: role ?? _role,
        tokensData: tokensData ?? _tokensData,
      );
  String? get licenseImageUrl => _licenseImageUrl;
  String? get licenseNum => _licenseNum;
  dynamic get driverPermissions => _driverPermissions;
  dynamic get orgainzation => _orgainzation;
  dynamic get trips => _trips;
  dynamic get rates => _rates;
  String? get firstName => _firstName;
  String? get lastName => _lastName;
  String? get photoUrl => _photoUrl;
  bool? get isAuthenticated => _isAuthenticated;
  Connection? get connectionData => _connectionData;
  String? get userId => _userId;
  String? get userName => _userName;
  String? get role => _role;
  Tokens? get tokensData => _tokensData;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['licenseImageUrl'] = _licenseImageUrl;
    map['licenseNum'] = _licenseNum;
    map['driverPermissions'] = _driverPermissions;
    map['orgainzation'] = _orgainzation;
    map['trips'] = _trips;
    map['rates'] = _rates;
    map['firstName'] = _firstName;
    map['lastName'] = _lastName;
    map['photoUrl'] = _photoUrl;
    map['isAuthenticated'] = _isAuthenticated;
    if (_connectionData != null) {
      map['connectionData'] = _connectionData?.toJson();
    }
    map['userId'] = _userId;
    map['userName'] = _userName;
    map['role'] = _role;
    if (_tokensData != null) {
      map['tokensData'] = _tokensData?.toJson();
    }
    return map;
  }
}

/// token : "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJhbGlhbGkiLCJqdGkiOiI2ZjhjZjgwOS0yMjk3LTRjMmYtYjdkZi1hOTg2OTZkZTdjZDgiLCJ1aWQiOiI4MTc4N2IxYS02YWU1LTQ1MjYtYTc1MS04Yzg2M2Q3OTg2MmMiLCJyb2xlcyI6IlB1YmxpY0RyaXZlciIsImV4cCI6MTcxODgzMzM0NSwiaXNzIjoiU2VjdXJlQXBpIiwiYXVkIjoiU2VjdXJlQXBpVXNlciJ9.Py5iqMYaHIXsOTqaZgKhAOjTaRcRFCmhxKbooWLt280"
/// tokenExpiryDate : "2024-06-19T21:42:25Z"
/// refreshToken : "gnTnNY5SnpIuG5EvUQpXDAaOeNoIqgsnzGfGnMgbDLc="
/// refTokenExpiryDate : "2024-06-24T21:42:25.957019Z"

class Tokens {
  Tokens({
    String? token,
    String? tokenExpiryDate,
    String? refreshToken,
    String? refTokenExpiryDate,
  }) {
    _token = token;
    _tokenExpiryDate = tokenExpiryDate;
    _refreshToken = refreshToken;
    _refTokenExpiryDate = refTokenExpiryDate;
  }

  Tokens.fromJson(dynamic json) {
    _token = json['token'];
    _tokenExpiryDate = json['tokenExpiryDate'];
    _refreshToken = json['refreshToken'];
    _refTokenExpiryDate = json['refTokenExpiryDate'];
  }
  String? _token;
  String? _tokenExpiryDate;
  String? _refreshToken;
  String? _refTokenExpiryDate;
  Tokens copyWith({
    String? token,
    String? tokenExpiryDate,
    String? refreshToken,
    String? refTokenExpiryDate,
  }) =>
      Tokens(
        token: token ?? _token,
        tokenExpiryDate: tokenExpiryDate ?? _tokenExpiryDate,
        refreshToken: refreshToken ?? _refreshToken,
        refTokenExpiryDate: refTokenExpiryDate ?? _refTokenExpiryDate,
      );
  String? get token => _token;
  String? get tokenExpiryDate => _tokenExpiryDate;
  String? get refreshToken => _refreshToken;
  String? get refTokenExpiryDate => _refTokenExpiryDate;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['token'] = _token;
    map['tokenExpiryDate'] = _tokenExpiryDate;
    map['refreshToken'] = _refreshToken;
    map['refTokenExpiryDate'] = _refTokenExpiryDate;
    return map;
  }

  @override
  String toString() {
    return 'Tokens{_token: $_token, _tokenExpiryDate: $_tokenExpiryDate, _refreshToken: $_refreshToken, _refTokenExpiryDate: $_refTokenExpiryDate}';
  }
}

/// email : "mosd@ds.com"
/// phone : "02135664565"
/// emailConfirmed : false
/// phoneConfirmed : false

class Connection {
  Connection({
    String? email,
    String? phone,
    bool? emailConfirmed,
    bool? phoneConfirmed,
  }) {
    _email = email;
    _phone = phone;
    _emailConfirmed = emailConfirmed;
    _phoneConfirmed = phoneConfirmed;
  }

  Connection.fromJson(dynamic json) {
    _email = json['email'];
    _phone = json['phone'];
    _emailConfirmed = json['emailConfirmed'];
    _phoneConfirmed = json['phoneConfirmed'];
  }
  String? _email;
  String? _phone;
  bool? _emailConfirmed;
  bool? _phoneConfirmed;
  Connection copyWith({
    String? email,
    String? phone,
    bool? emailConfirmed,
    bool? phoneConfirmed,
  }) =>
      Connection(
        email: email ?? _email,
        phone: phone ?? _phone,
        emailConfirmed: emailConfirmed ?? _emailConfirmed,
        phoneConfirmed: phoneConfirmed ?? _phoneConfirmed,
      );
  String? get email => _email;
  String? get phone => _phone;
  bool? get emailConfirmed => _emailConfirmed;
  bool? get phoneConfirmed => _phoneConfirmed;

  @override
  String toString() {
    return 'Connection{_email: $_email, _phone: $_phone, _emailConfirmed: $_emailConfirmed, _phoneConfirmed: $_phoneConfirmed}';
  }

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['email'] = _email;
    map['phone'] = _phone;
    map['emailConfirmed'] = _emailConfirmed;
    map['phoneConfirmed'] = _phoneConfirmed;
    return map;
  }
}
