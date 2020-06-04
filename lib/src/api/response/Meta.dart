class Meta {
  final bool status;
  final String message;
  final int status_code;

  Meta.formJson(Map<String, dynamic> json)
      : this.status = json['status'],
        this.message = json['message'],
        this.status_code = json['status_code'];

  Map<String, dynamic> toJson() => {
        'status': this.status,
        'message': this.message,
        'status_code': this.status_code
      };
}
