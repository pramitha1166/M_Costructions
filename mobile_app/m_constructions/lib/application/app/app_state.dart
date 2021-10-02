import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_state.freezed.dart';

@freezed
class AppState with _$AppState {
  const factory AppState({
    required bool loggedIn,
    required String token,
    required String profileId,
  }) = _AppState;

  factory AppState.initial() =>
      const AppState(loggedIn: false, token: '', profileId: '');
}
