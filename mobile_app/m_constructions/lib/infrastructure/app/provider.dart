import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:m_constructions/domain/app/i_local_repository.dart';
import 'package:m_constructions/infrastructure/app/local_repository.dart';

final localStorageProvider = Provider<FlutterSecureStorage>((ref) {
  return const FlutterSecureStorage();
});

final localRepositoryProvider = Provider<ILocalRepository>(
    (ref) => LocalRepository(ref.watch(localStorageProvider)));
