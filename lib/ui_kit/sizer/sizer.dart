// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class Sizer {
  const Sizer._();

  static bool get is_tablet {
    if (Get.context != null) {
      return (MediaQuery.of(Get.context!).size.shortestSide > 600);
    } else {
      return false;
    }
  }

  static bool get is_mobile {
    if (Get.context != null) {
      return MediaQuery.of(Get.context!).size.shortestSide < 600;
    } else {
      return false;
    }
  }

  static double getTextSize(
    double size, {
    double? tabletSize,
    bool isFixedSize = false,
  }) {
    if (isFixedSize) {
      return is_tablet ? tabletSize ?? size : size;
    }

    return is_tablet ? tabletSize?.sp ?? size.sp : size.sp;
  }

  static double getWidthSizeOf(double size, {double? tabletSize}) {
    return is_tablet ? tabletSize?.w ?? size.w : size.w;
  }

  static double getHeightSizeOf(double size, {double? tabletSize}) {
    return is_tablet ? tabletSize?.h ?? size.h : size.h;
  }

  static double getFixedSizeOf(double size, {double? tabletSize}) {
    return is_tablet ? tabletSize ?? size : size;
  }
}
