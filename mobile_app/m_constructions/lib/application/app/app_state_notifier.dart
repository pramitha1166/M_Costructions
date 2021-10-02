import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:m_constructions/domain/app/i_local_repository.dart';
import 'package:m_constructions/utils/log_utils.dart';

import 'app_state.dart';

class AppStateNotifier extends StateNotifier<AppState> {
  AppStateNotifier(this._localRepository) : super(AppState.initial()) {
    _logUtils.log("init");
  }

  static final LogUtils _logUtils = LogUtils(
    featureName: "AppStateNotifier",
    printLog: true,
  );

  final ILocalRepository _localRepository;

  @override
  void dispose() {
    _logUtils.log("dispose");
    super.dispose();
  }

  Future<void> appStart() async {}

  void login() {
    state = state.copyWith();
  }

  Future<void> logout() async {
    await _localRepository.deleteAll();
    // App.appRouter.replaceAll(
    //   [
    //     const SplashRoute(),
    //   ],
    // );
  }
}
