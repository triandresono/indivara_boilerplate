import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:indivara_boilerplate/ui_kit/generated_theme/fonts.gen.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class AppMaterial extends StatelessWidget {
  const AppMaterial({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(
      builder: (context, orientation, device) {
        return LayoutBuilder(
          builder: (context, constraints) {
            return OrientationBuilder(
              builder: (context, orientation) {
                return GetMaterialApp(
                  defaultTransition: Transition.cupertino,
                  debugShowCheckedModeBanner: false,
                  navigatorKey: Get.key,
                  getPages: [],
                  initialRoute: '',
                  localizationsDelegates: const [
                    DefaultCupertinoLocalizations.delegate,
                  ],
                  supportedLocales: const [
                    Locale('id', 'ID'),
                    Locale('en', 'US'),
                  ],
                  theme: ThemeData(
                    scaffoldBackgroundColor: Colors.white,
                    brightness: Brightness.light,
                    fontFamily: FontFamily.montserrat,
                    appBarTheme: const AppBarTheme(
                      backgroundColor: Colors.white,
                      elevation: 0.0,
                      centerTitle: false,
                      systemOverlayStyle: SystemUiOverlayStyle(
                        statusBarBrightness: Brightness.light,
                        statusBarColor: Colors.transparent,
                      ),
                    ),
                  ),
                );
              },
            );
          },
        );
      },
    );
  }
}
