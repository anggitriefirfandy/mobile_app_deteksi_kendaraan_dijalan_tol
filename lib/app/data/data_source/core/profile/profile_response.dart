import 'dart:convert';

class User {
  String firstname;
  String lastname;
  String email;

  User({
    required this.firstname,
    required this.lastname,
    required this.email,
  });

  factory User.fromMap(Map<String, dynamic> json) {
    return User(
        firstname: json["firstname"],
        lastname: json["lastname"],
        email: json["email"]);
  }
}

class ChangeUser {
  String firstname;
  String lastname;

  ChangeUser({
    required this.firstname,
    required this.lastname,
  });

  Map<String, dynamic> toMap() {
    return {
      'firstname': firstname,
      'lastname': lastname,
    };
  }

  String toJson() => json.encode(toMap());
}

class ChangeUserResponse {
  String message;
  // String firstname;
  // String lastname;

  ChangeUserResponse({
    required this.message,
    // required this.firstname,
    // required this.lastname,
  });

  factory ChangeUserResponse.fromMap(Map<String, dynamic> json) {
    return ChangeUserResponse(
      message: json["message"],
      // firstname: json["firstname"],
      // lastname: json["lastname"],
    );
  }
}

class UserResponse {
  String status;
  User? data;

  UserResponse({required this.status, required this.data});

  factory UserResponse.fromMap(Map<String, dynamic> json) {
    return UserResponse(
        status: json["status"], data: User.fromMap(json["data"]));
  }
}

class ChangePassword {
  String current_password;
  String new_password;

  ChangePassword({
    required this.current_password,
    required this.new_password,
  });

  Map<String, dynamic> toMap() {
    return {
      'current_password': current_password,
      'new_password': new_password,
    };
  }

  String toJson() => jsonEncode(toMap());
}

class ChangePasswordResponse {
  // String status;
  String message;
  // String firstname;
  // String lastname;

  ChangePasswordResponse({
    // required this.status,
    required this.message,
    // required this.firstname,
    // required this.lastname,
  });

  factory ChangePasswordResponse.fromMap(Map<String, dynamic> json) {
    return ChangePasswordResponse(
      // status: json["status"],
      message: json["message"],
      // firstname: json["firstname"],
      // lastname: json["lastname"],
    );
  }
}
