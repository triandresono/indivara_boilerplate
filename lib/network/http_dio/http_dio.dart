import 'package:dartz/dartz.dart';
import 'package:indivara_boilerplate/data/response/base/base_response.dart';

abstract class HttpDio {
  Future<Either<BaseResponse, Map<String, dynamic>>> get({
    required String uri,
    Map<String, String>? header,
    Map<String, dynamic>? parameter,
  });

  Future<Either<BaseResponse, Map<String, dynamic>>> post({
    required String uri,
    Map<String, String>? header,
    Map<String, dynamic>? parameter,
    Map<String, dynamic>? body,
    bool multipart = false,
  });

  Future<Either<BaseResponse, Map<String, dynamic>>> put({
    required String uri,
    Map<String, String>? header,
    Map<String, dynamic>? parameter,
    Map<String, dynamic>? body,
  });

  Future<Either<BaseResponse, Map<String, dynamic>>> delete({
    required String uri,
    Map<String, String>? header,
    Map<String, dynamic>? parameter,
    Map<String, dynamic>? body,
    bool multipart = false,
  });
}
