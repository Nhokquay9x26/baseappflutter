import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

class SharePrefs {
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
    if (!_prefs.containsKey('token')) {
      return null;
    }

    return _prefs.getString('token');
  }

  set token(String token) {
    _prefs.setString('token', token);
  }

  String get lang {
    if (!_prefs.containsKey('lang')) {
      return null;
    }

    return _prefs.getString('lang');
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
    _prefs.setString('lang', lang);
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
    _prefs.remove('token');
    _prefs.remove('expiresDate');
    _prefs.remove('user');
  }
}
