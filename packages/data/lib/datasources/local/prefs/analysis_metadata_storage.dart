import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class AnalysisMetadataStorage {
  int getLastPersonIndex();
  Future<void> setLastPersonIndex(int index);
}

@LazySingleton(as: AnalysisMetadataStorage)
class AnalysisMetadataStorageImpl implements AnalysisMetadataStorage {
  final SharedPreferences _prefs;
  AnalysisMetadataStorageImpl(this._prefs);

  static const _keyLastIndex = 'last_person_index';

  @override
  int getLastPersonIndex() => _prefs.getInt(_keyLastIndex) ?? 0;

  @override
  Future<void> setLastPersonIndex(int index) =>
      _prefs.setInt(_keyLastIndex, index);
}
