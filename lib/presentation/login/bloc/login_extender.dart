import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:indivara_boilerplate/domain/entity/idp_auth/member_login.dart';
import 'package:indivara_boilerplate/domain/usecase/login/login_usecase.dart';
import 'package:indivara_boilerplate/util/case/case.dart';

part 'login_bloc.dart';

mixin class _Extender {
  final phoneCo = TextEditingController();
  final passwordCo = TextEditingController();
  final loginCase = Case<MemberLogin>().obs;

  void _dispose() {
    phoneCo.dispose();
    passwordCo.dispose();
  }
}
