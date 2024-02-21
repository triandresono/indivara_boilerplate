import 'package:get/get.dart';
import 'package:indivara_boilerplate/network/http_dio/http_dio.dart';
import 'package:indivara_boilerplate/network/http_dio/http_dio_impl.dart';
import 'package:indivara_boilerplate/network/http_logger/http_inspector.dart';

class NetworkDependencies {
  NetworkDependencies() {
    Get.put(HttpInspector());
    Get.put<HttpDio>(HttpDioImpl(httpInspector: Get.find()));
    Get.find<HttpInspector>().initialize();
  }
}
