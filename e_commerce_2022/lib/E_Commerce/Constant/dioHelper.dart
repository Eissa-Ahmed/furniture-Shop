import 'package:dio/dio.dart';

class DioHelper {
  static late Dio dio;
  static init() {
    dio = Dio(
      BaseOptions(
        baseUrl: "https://student.valuxapps.com/api/",
        receiveDataWhenStatusError: true,
      ),
    );
  }

  static Future getData({required String path, String? token}) async {
    dio.options.headers = {
      "lang": "en",
      "Content-Type": "application/json",
      "Authorization": token,
    };
    return await dio.get(path);
  }

  static Future postData(
      {required String path, String? token, required dynamic data}) async {
    dio.options.headers = {
      "lang": "en",
      "Content-Type": "application/json",
      "Authorization": token,
    };
    return await dio.post(path, data: data);
  }

  static Future putData(
      {required String path, String? token, required dynamic data}) async {
    dio.options.headers = {
      "lang": "en",
      "Content-Type": "application/json",
      "Authorization": token,
    };
    return await dio.put(path, data: data);
  }
}
