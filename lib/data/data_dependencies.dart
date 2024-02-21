import 'package:get/get.dart';
import 'package:indivara_boilerplate/data/datasource/idp_auth_datasrouce.dart';
import 'package:indivara_boilerplate/data/repository/idp_auth/idp_auth_repository.dart';
import 'package:indivara_boilerplate/data/repository/idp_auth/idp_auth_repository_impl.dart';
import 'package:indivara_boilerplate/util/extension/extension.dart';

class DataDependencies {
  DataDependencies() {
    Get.lazy(IdpAuthDatasource(Get.find()));
    //
    //
    //
    Get.lazy<IdpAuthRepository>(IdpAuthRepositoryImpl(Get.find()));
  }
}
