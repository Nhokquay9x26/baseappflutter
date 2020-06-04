class AuthResponse {
  final String token;

  AuthResponse.formJson(Map<String, dynamic> json) : this.token = json['token'];

  Map<String, dynamic> toJson() => {'token': this.token};
}
