class LoginStatus {
  bool status;
  LoginStatus({
    required this.status,
  });
  factory LoginStatus.fromJson(Map<String, dynamic> json) =>
      LoginStatus(status: json["status"]);
  Map<String, Object?> toJson() {
    var map = <String, Object?>{
      "status": status,
    };
    return map;
  }
}
