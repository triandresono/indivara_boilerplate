import 'package:dartz/dartz.dart';
import 'package:indivara_boilerplate/data/datasource/idp_auth_datasrouce.dart';
import 'package:indivara_boilerplate/data/repository/idp_auth/idp_auth_repository.dart';
import 'package:indivara_boilerplate/data/response/base/status_response.dart';
import 'package:indivara_boilerplate/domain/entity/idp_auth/member_login.dart';

class IdpAuthRepositoryImpl extends IdpAuthRepository {
  final IdpAuthDatasource datasource;
  IdpAuthRepositoryImpl(this.datasource);

  @override
  Future<Either<StatusResponse, MemberLogin>> login(
    Map<String, dynamic> body,
  ) async {
    try {
      final result = await datasource.login(body);
      return result.fold(
        (error) => Left(error),
        (response) => Right(MemberLogin.fromMap(response.toMap())),
      );
    } catch (e) {
      return Left(StatusResponse.exception(e));
    }
  }
}
