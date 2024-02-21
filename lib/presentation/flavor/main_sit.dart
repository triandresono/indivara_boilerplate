import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:indivara_boilerplate/app_dependencies.dart';
import 'package:indivara_boilerplate/core/flavor/flavor.dart';
import 'package:indivara_boilerplate/presentation/app_material/app_material.dart';
import 'package:indivara_boilerplate/util/constants/constant.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  Flavor(variables: {
    Constants.flavorKey.flavor: Constants.flavorType.sit,
  });

  await AppDependencies().initialize;
  runApp(const AppMaterial());
}
