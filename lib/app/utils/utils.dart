import '../data/auth_repository.dart';
import '../data/auth_service.dart';

// const baseUrl = "http://192.168.56.168:5000/";
const baseUrl = "https://anggit.up.railway.app/";

final authService = AuthService();
final authRepository = AuthRepository();

Map<String, String> headers(String token) =>
    {"Content-Type": "application/json", "Authorization": "Bearer $token"};

// Map<String, String> headers2(String token) =>
//     {"Authorization": "Bearer $token"};