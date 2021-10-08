import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:m_constructions/domain/auth/auth_model.dart';

part 'auth_state.freezed.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState({
    required bool isLoading,
    required AuthResponse data,
  }) = _AuthState;

  factory AuthState.initial() => AuthState(
        isLoading: false,
        data: new AuthResponse(message: "initial"),
      );
}

/*
  http://192.168.8.103:5000/api/v2/user/signup
 "name": "shihara",
  "email": "shihara@gmail.com",
  "password": "classified23",
  "image": "imageurl",
  "mobile": "0750935556"
*/