import 'package:m_constructions/domain/auth/auth_model.dart';

abstract class IAuthRepository {
  Future<AuthResponse> login({required String email, required String password});
}
