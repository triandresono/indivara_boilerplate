import 'package:dartz/dartz.dart';
import 'package:indivara_boilerplate/data/response/base/status_response.dart';
import 'package:indivara_boilerplate/data/response/idp_auth/member_login_response.dart';
import 'package:indivara_boilerplate/network/api/api.dart';
import 'package:indivara_boilerplate/network/http_dio/http_dio.dart';

class IdpAuthDatasource {
  final HttpDio http;
  IdpAuthDatasource(this.http);

  Future<Either<StatusResponse, MemberLoginResponse>> login(
    Map<String, dynamic> body,
  ) async {
    try {
      final result = await http.post(
        uri: Api.idpAuth.login,
        body: body,
      );
      return result.fold(
        (error) => Left(error.statusResponse),
        (response) {
          final result = MemberLoginResponse.fromMap(response);
          if (result.statusResponse.failure == false) {
            return Right(result);
          } else {
            return Left(result.statusResponse);
          }
        },
      );
    } catch (e) {
      rethrow;
    }
  }
}
