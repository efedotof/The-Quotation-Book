import 'package:the_quotation_book/theme/repository/theme_interface.dart';
import 'package:shared_preferences/shared_preferences.dart';


class ThemeRepository implements ThemeInterface  {

  final SharedPreferences preferences;

  ThemeRepository({required this.preferences});

  static const _isDarkThemeSelectedKey = 'theme_key';


  @override
  bool isDarkTheme() {
    final selected = preferences.getBool(_isDarkThemeSelectedKey);
    return selected ?? false;
  }

  @override
  Future<void> setDarkThemeSelected(bool selected) async {
    await preferences.setBool(_isDarkThemeSelectedKey, selected);
  }
  
}