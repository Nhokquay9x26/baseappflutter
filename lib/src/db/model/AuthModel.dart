class AuthModel {
  String login;
  String password;
  String imei;
  String phone_info;

  Map toJson() => {
    'login': login,
    'password': password,
    'imei': imei,
    'phone_info': phone_info,
  };
}
