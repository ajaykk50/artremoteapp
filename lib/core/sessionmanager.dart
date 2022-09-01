import 'package:shared_preferences/shared_preferences.dart';

class SessionManager {
  final String auth_token = "auth_token";
  final String refresh_token = "refresh_token";

  Future<void> setAuthToken(String auth_token) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString(this.auth_token, auth_token);
  }

  Future<void> setRefreshToken(String refresh_token) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString(this.refresh_token, refresh_token);
  }

//get value from shared preferences
  Future<String> getAuthToken() async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    String auth_token;
    auth_token = pref.getString(this.auth_token) ?? '';
    return auth_token;
  }

  Future<String> getRefreshToken() async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    String refresh_token;
    refresh_token = pref.getString(this.refresh_token) ?? '';
    return refresh_token;
  }
}
