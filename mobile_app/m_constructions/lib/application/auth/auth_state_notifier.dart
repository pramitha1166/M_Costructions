import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:m_constructions/domain/auth/i_auth_repository.dart';
import 'package:m_constructions/utils/log_utils.dart';

import 'auth_state.dart';

class AuthStateNotifier extends StateNotifier<AuthState> {
  AuthStateNotifier(this._authRepository) : super(AuthState.initial()) {
    _logUtils.log("init");
  }

  static final LogUtils _logUtils = LogUtils(
    featureName: "AuthStateNotifier",
    printLog: true,
  );

  final IAuthRepository _authRepository;

  @override
  void dispose() {
    _logUtils.log("dispose");
    super.dispose();
  }

  Future<void> login({required String email, required String password}) async {
    state = state.copyWith(
      isLoading: true,
    );
    _authRepository.login(email: email, password: password);

    // List<Item> _data = await _iItemListRepository.readItemList();
    // state = state.copyWith(isLoading: false, data: _data);
  }
}
