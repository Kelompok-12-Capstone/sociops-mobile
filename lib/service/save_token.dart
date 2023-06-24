import 'package:shared_preferences/shared_preferences.dart';

class SharedPref {
  static SharedPreferences? _preferences;

  static Future<SharedPreferences> get preferences async {
    if (_preferences != null) {
      return _preferences!;
    }

    _preferences = await SharedPreferences.getInstance();
    return _preferences!;
  }

  static Future<void> saveToken(String token) async {
    final prefs = await preferences;
    prefs.setString('access_token', token);
  }

  static Future<String?> getToken() async {
    final prefs = await preferences;
    return prefs.getString('access_token');
  }

  static Future<void> removeToken() async {
    final prefs = await preferences;
    prefs.remove('access_token');
  }
}

// void main() async {
//   // Simpan token
//   String token = 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjkwIiwibmFtZSI6IlRlc3QgVGVzdCIsInJvbGUiOiJBRE1JTiIsImV4cCI6MTY4NzU3NjcxOH0.4PtfpP0GtB1QKuaWlZugNG6dgkrcOoxSIz9GUSzNpYg';
//   await SharedPref.saveToken(token);
//   print('Token berhasil disimpan.');

//   // Dapatkan token
//   String? storedToken = await SharedPref.getToken();
//   if (storedToken != null) {
//     print('Token yang disimpan: $storedToken');
//   } else {
//     print('Token tidak tersimpan.');
//   }

//   // Hapus token
//   await SharedPref.removeToken();
//   print('Token berhasil dihapus.');
// }