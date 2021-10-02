import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:m_constructions/application/app/app_state_provider.dart';

class SplashScreen extends HookConsumerWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isSubmitting =
        ref.watch(appStateNotifierProvider.select((value) => value.token));
    return Container(
      child: Text(isSubmitting),
    );
  }
}
