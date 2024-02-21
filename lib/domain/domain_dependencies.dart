import 'package:get/get.dart';
import 'package:indivara_boilerplate/domain/usecase/login/login_usecase.dart';
import 'package:indivara_boilerplate/domain/usecase/login/login_usecase_impl.dart';
import 'package:indivara_boilerplate/util/extension/extension.dart';

class DomainDependencies {
  DomainDependencies() {
    Get.lazy<LoginUsecase>(LoginUsecaseImpl(Get.find()));
  }
}
