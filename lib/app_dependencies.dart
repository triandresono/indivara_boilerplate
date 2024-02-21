import 'package:fimber/fimber.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:indivara_boilerplate/data/data_dependencies.dart';
import 'package:indivara_boilerplate/domain/domain_dependencies.dart';
import 'package:indivara_boilerplate/network/http_logger/dev_tree.dart';
import 'package:indivara_boilerplate/network/network_dependencies.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AppDependencies {
  Future<void> get initialize async {
    if (kReleaseMode == false) Fimber.plantTree(DevTree());
    final pref = await SharedPreferences.getInstance();
    final info = await PackageInfo.fromPlatform();
    Get.put<SharedPreferences>(pref);
    Get.put<PackageInfo>(info);
    //
    // Get.lazy(LocalDatasource(Get.find()));
    // Get.lazy<LocalRepository>(LocalRepositoryImpl(Get.find()));
    // Get.lazy<LocalUsecase>(LocalUsecaseImpl(Get.find()));
    //
    NetworkDependencies();
    DataDependencies();
    DomainDependencies();
  }
}
