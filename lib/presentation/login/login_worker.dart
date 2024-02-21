import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:indivara_boilerplate/domain/entity/idp_auth/member_login.dart';
import 'package:indivara_boilerplate/presentation/login/bloc/login_extender.dart';
import 'package:indivara_boilerplate/ui_kit/get_state/get_state.dart';
import 'package:indivara_boilerplate/ui_kit/get_state/get_state_builder.dart';
import 'package:indivara_boilerplate/util/case/case.dart';
import 'package:indivara_boilerplate/util/extension/extension.dart';
import 'package:indivara_boilerplate/util/methods/methods.dart';
part 'login_page.dart';

mixin class _Worker {
  final bloc = Get.find<LoginBloc>();

  List<Worker> get worker {
    return [
      Methods.listen<MemberLogin>(
        listener: bloc.loginCase,
        callback: (state) {
          if (state is ErrorCase) {
            Get.error(description: state.failure.text);
          } else if (state is LoadedCase) {
            //
          }
        },
      ),
    ];
  }
}
