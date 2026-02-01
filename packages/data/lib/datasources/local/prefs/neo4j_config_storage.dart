import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:uuid/uuid.dart';

abstract class Neo4jConfigStorage {
  Future<String> getDatabaseName();
}

@LazySingleton(as: Neo4jConfigStorage)
class Neo4jConfigStorageImpl implements Neo4jConfigStorage {
  final SharedPreferences _prefs;
  static const String _keyDeviceId = 'device_id';

  Neo4jConfigStorageImpl(this._prefs);

  @override
  Future<String> getDatabaseName() async {
    String? id = _prefs.getString(_keyDeviceId);
    if (id == null || id.isEmpty) {
      id = const Uuid().v4().replaceAll('-', '');
      await _prefs.setString(_keyDeviceId, id);
    }

    return "db$id";
  }
}
