import 'package:dio/dio.dart';

class DioInstance {

  final Dio _dio = Dio(BaseOptions(
      baseUrl: "https://gateway.marvel.com/v1/public/", 
      queryParameters: {
        "ts":"1",
        "apikey" : "ea230e2e702e0b90c174b32e8ffcc5ce",
        "hash" : "8c176ce482ae04a1fce92e772f7d5fb3"
      }));

  DioInstance._();

  Dio get dio => _dio;

  static final instance = DioInstance._();
}
