abstract class ILocalRepository {
  Future<String> read(String key);

  Future<Map<String, String>> readAll();

  Future<bool> create(String key, String value);

  Future<bool> update(String key, String value);

  Future<bool> createOrUpdate(String key, String value);

  Future<bool> delete(String key);

  Future<bool> deleteAll();
}
