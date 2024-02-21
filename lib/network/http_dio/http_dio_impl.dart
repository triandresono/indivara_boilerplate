import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:indivara_boilerplate/data/response/base/base_response.dart';
import 'package:indivara_boilerplate/data/response/base/status_response.dart';
import 'package:indivara_boilerplate/network/http_dio/http_dio.dart';
import 'package:indivara_boilerplate/network/http_dio/http_dio_adapter.dart';
import 'package:indivara_boilerplate/network/http_logger/http_inspector.dart';
import 'package:indivara_boilerplate/network/http_logger/http_logger.dart';
part 'http_dio_extender.dart';

class HttpDioImpl extends HttpDio with _Extender {
  HttpDioImpl({
    required HttpInspector httpInspector,
    // required LocalDatasource local,
  }) {
    _dio.options.connectTimeout = const Duration(milliseconds: 30000);
    _dio.options.receiveTimeout = const Duration(milliseconds: 30000);
    _dio.interceptors.add(httpInspector.interceptor);
    _dio.interceptors.add(LoggingInterceptor());
    // (this).local = local;
  }

  @override
  Future<Either<BaseResponse, Map<String, dynamic>>> post({
    required String uri,
    Map<String, String>? header,
    Map<String, dynamic>? parameter,
    Map<String, dynamic>? body,
    bool multipart = false,
  }) async {
    _dio.options.headers = _setHeader(header);
    try {
      final response = await _dio.post(
        uri,
        data: multipart ? FormData.fromMap(body ?? {}) : body,
        queryParameters: parameter,
      );
      return (this)._dioResponse(response);
    } on DioException catch (e) {
      return Left((this)._dioCatch(e));
    }
  }

  @override
  Future<Either<BaseResponse, Map<String, dynamic>>> get({
    required String uri,
    Map<String, String>? header,
    Map<String, dynamic>? parameter,
  }) async {
    _dio.options.headers = _setHeader(header);
    try {
      final response = await _dio.get(
        uri,
        queryParameters: parameter,
      );
      return (this)._dioResponse(response);
    } on DioException catch (e) {
      return Left((this)._dioCatch(e));
    }
  }

  @override
  Future<Either<BaseResponse, Map<String, dynamic>>> delete({
    required String uri,
    Map<String, String>? header,
    Map<String, dynamic>? parameter,
    Map<String, dynamic>? body,
    bool multipart = false,
  }) async {
    _dio.options.headers = _setHeader(header);
    try {
      final response = await _dio.delete(
        uri,
        data: multipart ? FormData.fromMap(body ?? {}) : body,
      );
      return (this)._dioResponse(response);
    } on DioException catch (e) {
      return Left((this)._dioCatch(e));
    }
  }

  @override
  Future<Either<BaseResponse, Map<String, dynamic>>> put({
    required String uri,
    Map<String, String>? header,
    Map<String, dynamic>? parameter,
    Map<String, dynamic>? body,
  }) async {
    _dio.options.headers = _setHeader(header);
    try {
      final response = await _dio.put(
        uri,
        data: body,
        queryParameters: parameter,
      );
      return (this)._dioResponse(response);
    } on DioException catch (e) {
      return Left((this)._dioCatch(e));
    }
  }
}
