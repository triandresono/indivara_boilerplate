// ignore_for_file: library_private_types_in_public_api

import 'package:indivara_boilerplate/core/flavor/flavor.dart';
import 'package:indivara_boilerplate/util/constants/constant.dart';
part 'uri/idp_auth_uri.dart';

mixin class Api {
  String get _v => '/v1';
  String get _api => '/api';
  String get _base {
    final type = Flavor.map(Constants.flavorKey.flavor);
    if (type == Constants.flavorType.dev) {
      return "https://8xhc94v7gl.execute-api.ap-southeast-3.amazonaws.com/co";
    } else if (type == Constants.flavorType.uat) {
      return "https://8xhc94v7gl.execute-api.ap-southeast-3.amazonaws.com/co";
    } else {
      return "https://8xhc94v7gl.execute-api.ap-southeast-3.amazonaws.com/co";
    }
  }

  static _IdpAuth idpAuth = const _IdpAuth();
}
