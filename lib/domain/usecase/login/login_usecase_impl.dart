import 'package:dartz/dartz.dart';
import 'package:indivara_boilerplate/data/repository/idp_auth/idp_auth_repository.dart';
import 'package:indivara_boilerplate/data/response/base/status_response.dart';
import 'package:indivara_boilerplate/domain/entity/idp_auth/member_login.dart';
import 'package:indivara_boilerplate/domain/usecase/login/login_usecase.dart';

class LoginUsecaseImpl extends LoginUsecase {
  final IdpAuthRepository repository;
  LoginUsecaseImpl(this.repository);

  @override
  Future<Either<StatusResponse, MemberLogin>> login(
    Map<String, dynamic> body,
  ) {
    return repository.login(body);
  }
}
