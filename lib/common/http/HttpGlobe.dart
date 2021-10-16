import 'package:dio/dio.dart';

//单例对象
class HttpGlobe {
  static late HttpGlobe _httpGlobe =  new HttpGlobe();
  late Dio dio;

  static HttpGlobe getInstance() {
    // ignore: unnecessary_null_comparison
    return _httpGlobe;
  }

  HttpGlobe() {
    initDio();
  }

  void initDio() {
    dio = Dio();
    dio.options = BaseOptions(
        baseUrl: "https://zxw.td0f7.cn/",
        connectTimeout: 5000,
        sendTimeout: 5000,
        receiveTimeout: 5000,
        headers: {
          "token": "1234",
        },
        //  表单提交
        contentType: Headers.formUrlEncodedContentType,
        //返回的数据是json
        responseType: ResponseType.json);

    //自己写
    // dio.interceptors.add(InterceptorsWrapper(
    //     onResponse: (
    //   Response e,
    //   ResponseInterceptorHandler handler,
    // ) {}));
    dio.interceptors.add(LogInterceptor());
    // dio.interceptors.add()
  }
}
