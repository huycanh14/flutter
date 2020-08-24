import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:login_app/app/config/interceptors.dart';
import 'package:login_app/constants/url_const.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AccountService {
  var dio = new Dio();

  Future<dynamic> signInWithEmailAndPassword(
      String email, String password) async {
    try {
      dio.interceptors.add(HttpInterceptors());
      SharedPreferences _prefs = await SharedPreferences.getInstance();
      Response response = await dio.post(
          "${ENV.URL_API}${ENV.APP_API}${ENV.APP_ACCOUNT}${ENV.APP_LOGOPT_ENDPOINT}",
          data: jsonEncode({"email": email, "password": password}));
      _prefs.setString('refresh_token', response.data["refresh_token"]);
      return await getAccessToken();
    } on DioError catch (e) {
      return e.response;
    }
  }

  Future<dynamic> getAccessToken() async {
    try {
      dio.interceptors.add(HttpInterceptors());
      SharedPreferences _prefs = await SharedPreferences.getInstance();
      Response response = await dio.post(
          "${ENV.URL_API}${ENV.APP_API}${ENV.APP_ACCOUNT}${ENV.APP_TOKEN_ENDPOINT}");
      _prefs.setString('access_token', response.data['access_token']);
      return response;
    } on DioError catch (e) {
      return e.response;
    }
  }
}
