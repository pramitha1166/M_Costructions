class AuthResponse {
  AuthResponse({
    required this.message,
  });

  String message;

  factory AuthResponse.fromJson(Map<String, dynamic> json) => AuthResponse(
        message: json["message"],
      );

  Map<String, dynamic> toJson() => {
        "message": message,
      };
}
