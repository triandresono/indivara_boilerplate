part of 'http_dio_impl.dart';

mixin class _Extender {
  final _dio = Dio()..httpClientAdapter = HTTPAdapter();
  // late LocalDatasource local;

  Map<String, dynamic> get _defaultHeader {
    Map<String, String> headers = {};
    headers['Content-Type'] = 'application/json';
    headers['accept'] = 'application/json';
    // if (local.user.token.isNotEmpty) {
    //   headers['X-Application-Token'] = "Bearer ${local.user.token}";
    // }
    return headers;
  }

  Map<String, dynamic> _setHeader(Map<String, dynamic>? headers) {
    Map<String, dynamic> httpHeaders = _defaultHeader;
    if (headers != null) {
      headers.forEach((key, value) {
        httpHeaders[key] = value;
      });
    }
    return httpHeaders;
  }

  Either<BaseResponse, Map<String, dynamic>> _dioResponse(
    Response<dynamic> response,
  ) {
    if (response.statusCode != 200) {
      return Left(
        BaseResponse(
          statusResponse: StatusResponse(
            code: (response.statusCode ?? 400).toString(),
            text: response.data?['message'] ?? response.statusMessage,
          ),
        ),
      );
    } else {
      return Right(response.data);
    }
  }

  BaseResponse _dioCatch(DioException e) {
    if (e.response?.data is Map) {
      if (e.response?.data['status'] != null) {
        if (e.response?.data['status'] is Map) {
          return BaseResponse(
            datas: e.response?.data,
            statusResponse: StatusResponse(
              code: e.response?.data?['status']?['code'] ??
                  (e.response?.statusCode ?? 400).toString(),
              text: e.response?.data?['status']?['text'] ??
                  (e.message ?? "ERROR"),
            ),
          );
        } else if (e.response?.data['status'] is int) {
          return BaseResponse(
            datas: e.response?.data,
            statusResponse: StatusResponse(
              code:
                  (e.response?.data?['status'] ?? e.response?.statusCode ?? 400)
                      .toString(),
              text: e.response?.data?['message'] ?? (e.message ?? "ERROR"),
            ),
          );
        } else {
          final code = e.response?.statusCode ?? 400;
          return BaseResponse(
            statusResponse: StatusResponse(
              code: code.toString(),
              text: e.message ?? "${"ERROR"} $code",
            ),
          );
        }
      } else {
        final code = e.response?.statusCode ?? 400;
        return BaseResponse(
          statusResponse: StatusResponse(
            code: code.toString(),
            text: e.message ?? "${"ERROR"} $code",
          ),
        );
      }
    } else {
      final code = e.response?.statusCode ?? 400;
      return BaseResponse(
        statusResponse: StatusResponse(
          code: code.toString(),
          text: e.message ?? "${"ERROR"} $code",
        ),
      );
    }
  }
}
