class User {
  String _name;
  String _message;
  String _token;
  User(this._name, this._message, this._token);

  User.map(dynamic obj) {
    this._name = obj["success"];
    this._message = obj["message"];
    this._token = obj["data"];
  }

  String get name => _name;
  String get message => _message;
  String get token => _token;

  Map<String, dynamic> toMap() {
    var map = new Map<String, dynamic>();
    map["success"] = _name;
    map["message"] = _message;
    map["data"] = _token;

    return map;
  }
}