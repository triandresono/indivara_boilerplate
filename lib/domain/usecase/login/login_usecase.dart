import 'package:dartz/dartz.dart';
import 'package:indivara_boilerplate/data/response/base/status_response.dart';
import 'package:indivara_boilerplate/domain/entity/idp_auth/member_login.dart';

abstract class LoginUsecase {
  Future<Either<StatusResponse, MemberLogin>> login(
    Map<String, dynamic> body,
  );
}
