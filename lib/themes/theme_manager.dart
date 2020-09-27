import 'package:campaneo/themes/themes.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeManager with ChangeNotifier {
  ThemeData _themeData;
  final _kThemePreference = 'theme_preference';

  ThemeManager() {
    _loadTheme();
  }

  ThemeData get themeData {
    if (_themeData == null) {
      _themeData = appThemeData[AppTheme.Light];
    }
    return _themeData;
  }

  setTheme(AppTheme theme) async {
    _themeData = appThemeData[theme];
    notifyListeners();
    var prefs = await SharedPreferences.getInstance();
    prefs.setInt(_kThemePreference, AppTheme.values.indexOf(theme));
  }

  void _loadTheme() {
    SharedPreferences.getInstance().then((prefs) {
      final int prefTheme = prefs.getInt(_kThemePreference) ?? 0;
      _themeData = appThemeData[AppTheme.values[prefTheme]];
      notifyListeners();
    });
  }
}
