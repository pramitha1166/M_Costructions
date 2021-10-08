import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:m_constructions/infrastructure/auth/provider.dart';
import 'package:m_constructions/infrastructure/item_list/provider.dart';

import 'auth_state.dart';
import 'auth_state_notifier.dart';

final authStateNotifierProvider =
    StateNotifierProvider<AuthStateNotifier, AuthState>((ref) {
  final authRepository = ref.watch(authRepositoryProvider);

  return AuthStateNotifier(authRepository);
});
