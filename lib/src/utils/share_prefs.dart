
import 'dart:ui';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';

class SharePrefs2 {
  final String AUTH_MANAGER = 'auth_manager';
  final String PREFS_LANGUAGE = 'language';
  final String PREFS_TOKEN = 'token';

  Box boxAuthManager;
  Box boxUserManager;

  Future init() async {
    final appDocumentDir = await getApplicationDocumentsDirectory();
    print("path $appDocumentDir");
    Hive.init(appDocumentDir.path);
    boxUserManager = await Hive.openBox('user_manager');
    boxAuthManager = await Hive.openBox(AUTH_MANAGER);
  }

  Locale get locale {
    final String key = boxUserManager.get(PREFS_LANGUAGE, defaultValue: 'en');
    return Locale(key, "");
  }

  set language(String lang) {
    boxUserManager.put(PREFS_LANGUAGE, lang);
  }

  String get token => boxAuthManager.get(PREFS_TOKEN);

  set token(String token) {
    boxAuthManager.put(PREFS_TOKEN, token);
  }
}
