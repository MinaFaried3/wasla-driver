/// userName : "aliali"
/// password : "Mina1234"
/// role : "PublicDriver"

class LoginRequestBody {
  LoginRequestBody({
    String? userName,
    String? password,
    String? role,
  }) {
    _userName = userName;
    _password = password;
    _role = role;
  }

  LoginRequestBody.fromJson(dynamic json) {
    _userName = json['userName'];
    _password = json['password'];
    _role = json['role'];
  }
  String? _userName;
  String? _password;
  String? _role;
  LoginRequestBody copyWith({
    String? userName,
    String? password,
    String? role,
  }) =>
      LoginRequestBody(
        userName: userName ?? _userName,
        password: password ?? _password,
        role: role ?? _role,
      );
  String? get userName => _userName;
  String? get password => _password;
  String? get role => _role;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['userName'] = _userName;
    map['password'] = _password;
    map['role'] = _role;
    return map;
  }
}
