import 'package:shared_preferences/shared_preferences.dart';

class PersistenceService {
  Future<SharedPreferences> get _prefs => SharedPreferences.getInstance();

  Future<void> setString(String key, String value) async {
    (await _prefs).setString(key, value);
  }

  Future<String?> getString(String key) async {
    return (await _prefs).getString(key);
  }

  Future<void> remove(String key) async {
    (await _prefs).remove(key);
  }
}
