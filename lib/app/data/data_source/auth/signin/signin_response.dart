class SignInResponse {
  String? message;
  String? token;

  SignInResponse({required this.message ,required this.token});

  factory SignInResponse.fromMap(Map<String, dynamic> json) {
    return SignInResponse(message: json["message"], token: json["token"]);
  }
}

