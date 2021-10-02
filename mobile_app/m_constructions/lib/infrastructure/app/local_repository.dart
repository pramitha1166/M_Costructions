import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:m_constructions/domain/app/i_local_repository.dart';

import '../../utils/log_utils.dart';

class LocalRepository extends ILocalRepository {
  LocalRepository(this.storage);
  final FlutterSecureStorage storage;

  static final _logUtils = LogUtils(
    featureName: "LocalRepository",
    printLog: true,
  );

  @override
  Future<bool> create(String key, String value) {
    // TODO: implement create
    throw UnimplementedError();
  }

  @override
  Future<bool> createOrUpdate(String key, String value) {
    // TODO: implement createOrUpdate
    throw UnimplementedError();
  }

  @override
  Future<bool> delete(String key) {
    // TODO: implement delete
    throw UnimplementedError();
  }

  @override
  Future<bool> deleteAll() {
    // TODO: implement deleteAll
    throw UnimplementedError();
  }

  @override
  Future<String> read(String key) {
    // TODO: implement read
    throw UnimplementedError();
  }

  @override
  Future<Map<String, String>> readAll() {
    // TODO: implement readAll
    throw UnimplementedError();
  }

  @override
  Future<bool> update(String key, String value) {
    // TODO: implement update
    throw UnimplementedError();
  }
}
