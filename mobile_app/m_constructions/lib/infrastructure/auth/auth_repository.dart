import 'package:dio/dio.dart';
import 'package:m_constructions/config.dart';
import 'package:m_constructions/domain/auth/auth_model.dart';
import 'package:m_constructions/domain/auth/i_auth_repository.dart';

class AuthRepository extends IAuthRepository {
  @override
  Future<AuthResponse> login(
      {required String email, required String password}) async {
    AuthResponse data = AuthResponse(message: 'initail');
    Map<String, dynamic> dataParams = {"email": email, "password": password};
    try {
      var dio = Dio();

      await dio
          .post(config.backendUrl + 'api/v2/user/login',
              data: FormData.fromMap(dataParams))
          .then((value) {
        data = (AuthResponse.fromJson(value.data));
      });
    } catch (error, stacktrace) {
      throw Exception("Exception occured: $error stackTrace: $stacktrace");
    }

    return data;
  }
}
