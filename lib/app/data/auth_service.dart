import 'dart:convert';
import 'package:http/http.dart' as http;
import '../utils/utils.dart';

import 'data_source/auth/signin/signin_request.dart';
import 'data_source/auth/signin/signin_response.dart';
import 'data_source/auth/signup/signup_request.dart';
import 'data_source/auth/signup/signup_response.dart';
import 'data_source/core/history/history_response.dart';
import 'data_source/core/home/gas_response.dart';
import 'data_source/core/profile/profile_response.dart';

class AuthService {
  Future<SignUpResponse> doRegister(SignUpRequest signupRequest) async {
    final response = await http.post(Uri.parse("$baseUrl/user/signup"),
        headers: {"Content-Type": "application/json"},
        body: signupRequest.toJson());
    print("$response");
    if (response.statusCode == 201) {
      return SignUpResponse.fromMap(json.decode(response.body));
    } else {
      final err = SignUpResponse.fromMap(json.decode(response.body));
      throw Exception("${err.message}");
    }
  }

  Future<SignInResponse> doLogin(SignInRequest loginRequest) async {
    final response = await http.post(Uri.parse("$baseUrl/login"),
        headers: {"Content-Type": "application/json"},
        body: loginRequest.toJson());
    if (response.statusCode == 200) {
      return SignInResponse.fromMap(json.decode(response.body));
    } else {
      final err = SignInResponse.fromMap(json.decode(response.body));
      throw Exception("${err}");
    }
  }

  Future<GasResponse> getAllGas() async {
    final response = await http.get(
      Uri.parse("$baseUrl/list/gas"),
      headers: {"Content-Type": "application/json"},
    );
    print("tohen ${response.body}");
    if (response.statusCode == 200) {
      return GasResponse.fromMap(json.decode(response.body));
    } else {
      final err = GasResponse.fromMap(json.decode(response.body));
      throw Exception("${err.message} tod");
    }
  }

  Future<HistoryResponse> getAllHistory() async {
    final response = await http.get(
      Uri.parse("$baseUrl/list/inventory"),
      headers: {"Content-Type": "application/json"},
    );
    print("tohen ${response.body}");

    if (response.statusCode == 200) {
      return HistoryResponse.fromMap(json.decode(response.body));
    } else {
      final error = HistoryResponse.fromMap(json.decode(response.body));
      throw Exception("${error.message} ERROR GAES");
    }
  }

  // Future<ChangePasswordResponse> doChagePassword(
  //     ChangePasswordRequest changePasswordRequest) async {
  //   final response = await http.post(Uri.parse("$baseUrl/user/forgot-password"),
  //       headers: {"Content-Type": "application/json"},
  //       body: changePasswordRequest.toJson());

  //   if (response.statusCode == 200) {
  //     return ChangePasswordResponse.fromMap(json.decode(response.body));
  //   } else {
  //     final err = ChangePasswordResponse.fromMap(json.decode(response.body));
  //     throw Exception("${err.message}");
  //   }
  // }

  Future<ChangePasswordResponse> changePassword(
      ChangePassword changePassword) async {
    final token = await authRepository.getToken();
    print("dari change token" + token);
    final response = await http.put(Uri.parse("$baseUrl/editpassword"),
        body: changePassword.toJson(), headers: headers(token));
    print("hasil ${changePassword.toJson()}");
    print("data ${response.body}");
    print("token ${token}");
    if (response.statusCode == 200) {
      return ChangePasswordResponse.fromMap(json.decode(response.body));
    } else {
      final err = ChangePasswordResponse.fromMap(json.decode(response.body));
      throw Exception("${err.message}");
    }
  }

  Future<User> currentUser() async {
    final token = await authRepository.getToken();
    print(token);
    final response =
        await http.get(Uri.parse("$baseUrl/user"), headers: headers(token));
    print("data ${response.body}");
    print("tocken saya $token");
    if (response.statusCode == 200) {
      return User.fromMap(json.decode(response.body));
    } else {
      final err = UserResponse.fromMap(json.decode(response.body));
      throw Exception("${err.status}");
    }
  }

  Future<ChangeUserResponse> changeUser(ChangeUser changeUser) async {
    final token = await authRepository.getToken();
    print("halloo" + token);

    // Map<String, String> headers = {
    //   'Content-Type': 'application/json',
    //   'Authorization': token,
    // };
    final response = await http.put(Uri.parse("$baseUrl/edituser"),
        body: changeUser.toJson(), headers: headers(token));
    print("yahoo ${changeUser.toJson()}");
    print("data123 ${response.body}");
    print("tocken saya $token");
    if (response.statusCode == 200) {
      return ChangeUserResponse.fromMap(json.decode(response.body));
    } else {
      final err = ChangeUserResponse.fromMap(json.decode(response.body));
      throw Exception("${err.message}");
    }
  }

  //  Future<ChangeUserResponse> changeUser(ChangeUser changeUser) async {
  //   final token = await authRepository.getToken();
  //   print(token);
  //   final response = await http.put(Uri.parse("$baseUrl/change-user"),
  //       headers: headers(token),
  //       body: changeUser.toJson()
  //       );
  //   if (response.statusCode == 200) {
  //     return ChangeUserResponse.fromMap(json.decode(response.body));
  //   } else {
  //     final err = ChangeUserResponse.fromMap(json.decode(response.body));
  //     throw Exception("${err.message}");
  //   }
  // }
}
