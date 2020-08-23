import 'package:auto_route/auto_route.dart';
import 'package:dio/dio.dart';
import 'package:login_app/app/router/router.gr.dart';
import 'package:login_app/constants/url_const.dart';
import 'package:shared_preferences/shared_preferences.dart';

// Future<Dio> interceptors() async {
//   final dio = new Dio();
//   SharedPreferences _prefs = await SharedPreferences.getInstance();
//   dio.interceptors.clear();
//   dio.interceptors
//       .add(InterceptorsWrapper(onRequest: (RequestOptions _options) {
//     dio.interceptors.requestLock.lock();
//     dio.interceptors.responseLock.lock();
//     print('goi lai');
//     var _url = "${ENV.URL_API}${ENV.APP_API}${ENV.APP_ACCOUNT}";
//     if (_options.path == "$_url${ENV.APP_LOGOPT_ENDPOINT}" &&
//         _options.method == 'post') {
//       _options.headers = {'Content-Type': 'application/x-www-form-urlencoded'};
//     } else if (_options.path == "$_url" && _options.method == 'post') {
//       _options.headers = {'Content-Type': 'application/x-www-form-urlencoded'};
//     } else if (_options.path == "$_url${ENV.APP_TOKEN_ENDPOINT}" &&
//         _options.method == 'post') {
//       _options.headers = {
//         'Content-Type': 'application/x-www-form-urlencoded',
//         'refresh_token': _prefs
//             .getString('refresh_token') // Goi refresh_token luu tren local
//       };
//     } else {
//       _options.headers = {
//         'Content-Type': 'application/x-www-form-urlencoded',
//         'access_token':
//             _prefs.getString("access_token") // Goi access_token luu tren local
//       };
//     }
//     return _options;
//   }, onError: (error) async {
//     dio.interceptors.requestLock.lock();
//     dio.interceptors.responseLock.lock();
//     // Neu nhu phat hien loi
//     RequestOptions _options = error.response.request;
//     var status = error.response != null
//         ? error.response.statusCode
//         : null; // Kiem tra status tra ve tu request
//     if (status == 401 && error.response.data.accessTokenLife == false) {
//       dio.interceptors.requestLock.unlock();
//       dio.interceptors.responseLock.unlock();
//       final response = await dio.post(ENV.URL_API + ENV.APP_TOKEN_ENDPOINT);
//       _prefs.setString('refresh_token', response.data.refresh_token);
//       if (response.statusCode == 200) {
//         // Gọi lại phương thức trước đó(thao tác xử lý trước, recall action)
//         return dio.request(
//           _options.path,
//           options: _options,
//           data: _options.data,
//           queryParameters: _options.queryParameters,
//         );
//       } else if (status == 400 &&
//               error.response.data.refreshTokenLife == false ||
//           status == 403) {
//         return ExtendedNavigator.root.push(Routes.loginView);
//       }
//     }
//     dio.interceptors.requestLock.unlock();
//     dio.interceptors.responseLock.unlock();
//     return error.response;
//   }));
//   return dio;
// }

class HttpInterceptors extends Interceptor {

  final dio = new Dio();

  @override
  Future onRequest(RequestOptions _options) async {
    SharedPreferences _prefs = await SharedPreferences.getInstance();
    dio.interceptors.clear();
    dio.interceptors.requestLock.lock();
    dio.interceptors.responseLock.lock();
    print('goi lai');
    var _url = "${ENV.URL_API}${ENV.APP_API}${ENV.APP_ACCOUNT}";
    if (_options.path == "$_url${ENV.APP_LOGOPT_ENDPOINT}" &&
        _options.method == 'post') {
      _options.headers = {'Content-Type': 'application/x-www-form-urlencoded'};
    } else if (_options.path == "$_url" && _options.method == 'post') {
      _options.headers = {'Content-Type': 'application/x-www-form-urlencoded'};
    } else if (_options.path == "$_url${ENV.APP_TOKEN_ENDPOINT}" &&
        _options.method == 'post') {
      _options.headers = {
        'Content-Type': 'application/x-www-form-urlencoded',
        'refresh_token': _prefs
            .getString('refresh_token') // Goi refresh_token luu tren local
      };
    } else {
      _options.headers = {
        'Content-Type': 'application/x-www-form-urlencoded',
        'access_token':
            _prefs.getString("access_token") // Goi access_token luu tren local
      };
    }
    return _options;

    // return super.onRequest(_options);
  }

  @override
  Future onResponse(Response response) {
    return super.onResponse(response);
  }


  @override
  Future onError(DioError error) async {
    SharedPreferences _prefs = await SharedPreferences.getInstance();
    // return super.onError(err);
    dio.interceptors.requestLock.lock();
    dio.interceptors.responseLock.lock();
    // Neu nhu phat hien loi
    RequestOptions _options = error.response.request;
    var status = error.response != null
        ? error.response.statusCode
        : null; // Kiem tra status tra ve tu request
    if (status == 401 && error.response.data.accessTokenLife == false) {
      dio.interceptors.requestLock.unlock();
      dio.interceptors.responseLock.unlock();
      final response = await dio.post(ENV.URL_API + ENV.APP_TOKEN_ENDPOINT);
      _prefs.setString('refresh_token', response.data.refresh_token);
      if (response.statusCode == 200) {
        // Gọi lại phương thức trước đó(thao tác xử lý trước, recall action)
        return dio.request(
          _options.path,
          options: _options,
          data: _options.data,
          queryParameters: _options.queryParameters,
        );
      } else if (status == 400 &&
              error.response.data.refreshTokenLife == false ||
          status == 403) {
        return ExtendedNavigator.root.push(Routes.loginView);
      }
    }
    dio.interceptors.requestLock.unlock();
    dio.interceptors.responseLock.unlock();
    return error;
  }


}