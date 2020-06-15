import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

class SharePrefs {
  final String AUTH_MANAGER = 'auth_manager';
  final String PREFS_LANGUAGE = 'language';
  final String PREFS_TOKEN = 'token';

  SharedPreferences _prefs;

  DateTime get expiresDate {
    if (!_prefs.containsKey('expiresDate')) {
      return null;
    }

    String value = _prefs.getString('expiresDate');
    return DateTime.tryParse(value);
  }

  set expiresDate(DateTime date) {
    assert(date != null);
    _prefs.setString('expiresDate', date.toString());
  }

  String get token {
    if (!_prefs.containsKey(PREFS_TOKEN)) {
      return null;
    }

    return _prefs.getString(PREFS_TOKEN);
  }

  set token(String token) {
    _prefs.setString(PREFS_TOKEN, token);
  }

  String get lang {
    if (!_prefs.containsKey(PREFS_LANGUAGE)) {
      return null;
    }

    return _prefs.getString(PREFS_LANGUAGE);
  }

  String get loginType {
    if (!_prefs.containsKey('login_type')) {
      return null;
    }

    return _prefs.getString('login_type');
  }

  set loginType(String type) {
    _prefs.setString('login_type', type);
  }

  bool get firstTime {
    if (!_prefs.containsKey('firstTime')) {
      return true;
    }

    final value = _prefs.getString('firstTime');

    return value != '1';
  }

  set firstTime(bool first) {
    _prefs.setString('firstTime', first ? '1' : '0');
  }

  set lang(String lang) {
    _prefs.setString(PREFS_LANGUAGE, lang);
  }

  Map get user {
    if (!_prefs.containsKey('user')) {
      return null;
    }

    try {
      return json.decode(_prefs.getString('user'));
    } catch (e) {
      return null;
    }
  }

  set user(Map userData) {
    _prefs.setString('user', jsonEncode(userData));
  }

  Future setup() async {
    _prefs = await SharedPreferences.getInstance();
  }

  void removeUser() {
    _prefs.remove(PREFS_TOKEN);
    _prefs.remove('expiresDate');
    _prefs.remove('user');
  }
}
