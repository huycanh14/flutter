import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:login_app/constants/url_const.dart';

class AccountService {
  var dio = new Dio();

  Future<dynamic> signInWithEmailAndPassword(
      String email, String password) async {
    try {
      Response response = await dio.post(
          "${ENV.URL_API}${ENV.APP_API}${ENV.APP_ACCOUNT}${ENV.APP_LOGOPT_ENDPOINT}",
          data: jsonEncode({"email": email, "password": password}));
      print("vao day");
      print(response);
      return response;
    } on DioError catch (e) {
      print(e.response);
      return e.response;
    }
  }
}
