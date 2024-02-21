// ignore_for_file: constant_identifier_names

import 'package:flutter/material.dart';
import 'package:indivara_boilerplate/ui_kit/color/colors.dart';
import 'package:indivara_boilerplate/ui_kit/generated_theme/fonts.gen.dart';
import 'package:indivara_boilerplate/ui_kit/sizer/sizer.dart';

enum MontserratFontWeight {
  extra_light,
  light,
  regular,
  medium,
  semi_bold,
  bold,
  extra_bold,
  thin,
}

extension MontserratFontWeightExtension on MontserratFontWeight {
  FontWeight get value {
    switch (this) {
      case MontserratFontWeight.thin:
        return FontWeight.w100;
      case MontserratFontWeight.extra_light:
        return FontWeight.w200;
      case MontserratFontWeight.light:
        return FontWeight.w300;
      case MontserratFontWeight.regular:
        return FontWeight.w400;
      case MontserratFontWeight.medium:
        return FontWeight.w500;
      case MontserratFontWeight.semi_bold:
        return FontWeight.w600;
      case MontserratFontWeight.bold:
        return FontWeight.w700;
      case MontserratFontWeight.extra_bold:
        return FontWeight.w800;
      default:
        return FontWeight.w400;
    }
  }
}

class AppFontType {
  const AppFontType(
    this.family,
    this._size,
    this._tabletSize,
    this._isFixedSize,
  );

  static AppFontLoader appFontLoader = const AppFontLoader();

  final String family;
  final double _size;
  final double _tabletSize;
  final bool _isFixedSize;

  TextStyle extraBold({
    Color? color = Colored.textColor3,
    TextDecoration? decoration = TextDecoration.none,
    FontStyle? fontStyle = FontStyle.normal,
    double? letterSpacing,
    double? height,
  }) =>
      appFontLoader.textStyle(
        family,
        MontserratFontWeight.extra_bold.value,
        fontStyle ?? FontStyle.normal,
        _size,
        letterSpacing: letterSpacing,
        tabletSize: _tabletSize,
        isFixedSize: _isFixedSize,
        color: color,
        decoration: decoration,
        height: height,
      );

  TextStyle bold({
    Color? color = Colored.textColor3,
    TextDecoration? decoration = TextDecoration.none,
    FontStyle? fontStyle = FontStyle.normal,
    double? letterSpacing,
    double? height,
  }) =>
      appFontLoader.textStyle(
        family,
        MontserratFontWeight.bold.value,
        fontStyle ?? FontStyle.normal,
        _size,
        letterSpacing: letterSpacing,
        tabletSize: _tabletSize,
        isFixedSize: _isFixedSize,
        color: color,
        decoration: decoration,
        height: height,
      );

  TextStyle semiBold({
    Color? color = Colored.textColor3,
    TextDecoration? decoration = TextDecoration.none,
    FontStyle? fontStyle = FontStyle.normal,
    double? letterSpacing,
    double? height,
  }) =>
      appFontLoader.textStyle(
        family,
        MontserratFontWeight.semi_bold.value,
        fontStyle ?? FontStyle.normal,
        _size,
        letterSpacing: letterSpacing,
        tabletSize: _tabletSize,
        isFixedSize: _isFixedSize,
        color: color,
        decoration: decoration,
        height: height,
      );

  TextStyle medium({
    Color? color = Colored.textColor3,
    TextDecoration? decoration = TextDecoration.none,
    FontStyle? fontStyle = FontStyle.normal,
    double? letterSpacing,
    double? height,
  }) =>
      appFontLoader.textStyle(
        family,
        MontserratFontWeight.medium.value,
        fontStyle ?? FontStyle.normal,
        _size,
        letterSpacing: letterSpacing,
        tabletSize: _tabletSize,
        isFixedSize: _isFixedSize,
        color: color,
        decoration: decoration,
        height: height,
      );

  TextStyle regular({
    Color? color = Colored.textColor3,
    TextDecoration? decoration = TextDecoration.none,
    FontStyle? fontStyle = FontStyle.normal,
    double? letterSpacing,
    double? height,
  }) =>
      appFontLoader.textStyle(
        family,
        MontserratFontWeight.regular.value,
        fontStyle ?? FontStyle.normal,
        _size,
        letterSpacing: letterSpacing,
        tabletSize: _tabletSize,
        isFixedSize: _isFixedSize,
        color: color,
        decoration: decoration,
        height: height,
      );

  TextStyle light({
    Color? color = Colored.textColor3,
    TextDecoration? decoration = TextDecoration.none,
    FontStyle? fontStyle = FontStyle.normal,
    double? letterSpacing,
    double? height,
  }) =>
      appFontLoader.textStyle(
        family,
        MontserratFontWeight.light.value,
        fontStyle ?? FontStyle.normal,
        _size,
        letterSpacing: letterSpacing,
        tabletSize: _tabletSize,
        isFixedSize: _isFixedSize,
        color: color,
        decoration: decoration,
        height: height,
      );

  TextStyle extraLight({
    Color? color = Colored.textColor3,
    TextDecoration? decoration = TextDecoration.none,
    FontStyle? fontStyle = FontStyle.normal,
    double? letterSpacing,
    double? height,
  }) =>
      appFontLoader.textStyle(
        family,
        MontserratFontWeight.extra_light.value,
        fontStyle ?? FontStyle.normal,
        _size,
        letterSpacing: letterSpacing,
        tabletSize: _tabletSize,
        isFixedSize: _isFixedSize,
        color: color,
        decoration: decoration,
        height: height,
      );

  TextStyle thin({
    Color? color = Colored.textColor3,
    TextDecoration? decoration = TextDecoration.none,
    FontStyle? fontStyle = FontStyle.normal,
    double? letterSpacing,
    double? height,
  }) =>
      appFontLoader.textStyle(
        family,
        MontserratFontWeight.thin.value,
        fontStyle ?? FontStyle.normal,
        _size,
        letterSpacing: letterSpacing,
        tabletSize: _tabletSize,
        isFixedSize: _isFixedSize,
        color: color,
        decoration: decoration,
        height: height,
      );
}

class AppFontFamily {
  const AppFontFamily(this._family);

  final String _family;

  AppFontType get size6 => AppFontType(_family, 6, 6, false);

  AppFontType get size7 => AppFontType(_family, 7, 7, false);

  AppFontType get size8 => AppFontType(_family, 8, 8, false);

  AppFontType get size10 => AppFontType(_family, 10, 10, false);

  AppFontType get size11 => AppFontType(_family, 11, 11, false);

  AppFontType get size12 => AppFontType(_family, 12, 12, false);

  AppFontType get size13 => AppFontType(_family, 13, 13, false);

  AppFontType get size14 => AppFontType(_family, 14, 14, false);

  AppFontType get size16 => AppFontType(_family, 16, 16, false);

  AppFontType get size17 => AppFontType(_family, 17, 17, false);

  AppFontType get size18 => AppFontType(_family, 18, 18, false);

  AppFontType get size20 => AppFontType(_family, 20, 20, false);

  AppFontType get size22 => AppFontType(_family, 22, 22, false);

  AppFontType get size23 => AppFontType(_family, 23, 23, false);

  AppFontType get size24 => AppFontType(_family, 24, 24, false);

  AppFontType get size28 => AppFontType(_family, 28, 28, false);

  AppFontType fontSize(
    double size, {
    double? tabletSize,
    bool isFixedSize = false,
  }) {
    return AppFontType(_family, size, tabletSize ?? size, isFixedSize);
  }

  AppFontType fixedSize(
    double size, {
    double? tabletSize,
  }) {
    return AppFontType(_family, size, tabletSize ?? size, true);
  }
}

extension RGFontTypeExtention on AppFontType {
  AppFontType merge({required double tabletSize}) {
    double newSize = _size;
    return AppFontType(family, newSize, newSize, false);
  }
}

class AppFontLoader {
  const AppFontLoader();

  TextStyle textStyle(
    String family,
    FontWeight weight,
    FontStyle style,
    double size, {
    double? tabletSize,
    bool isFixedSize = false,
    Color? color,
    double? letterSpacing,
    double? wordSpacing,
    TextDecoration? decoration,
    double? height,
  }) {
    return TextStyle(
      height: height,
      fontFamily: family,
      fontWeight: weight,
      fontStyle: style,
      fontSize: Sizer.getTextSize(
        size,
        tabletSize: tabletSize,
        isFixedSize: isFixedSize,
      ),
      color: color,
      letterSpacing: letterSpacing,
      wordSpacing: wordSpacing,
      decoration: decoration,
    );
  }
}

class Montserrat {
  static AppFontFamily get style {
    return const AppFontFamily(FontFamily.montserrat);
  }

  static AppFontType size(double size) {
    return const AppFontFamily(FontFamily.montserrat).fontSize(size);
  }

  static AppFontType fix(double size) {
    return const AppFontFamily(FontFamily.montserrat).fixedSize(size);
  }

  static AppFontType get px10 {
    return const AppFontFamily(FontFamily.montserrat).fontSize(13.5);
  }

  static AppFontType get px11 {
    return const AppFontFamily(FontFamily.montserrat).fontSize(14);
  }

  static AppFontType get px12 {
    return const AppFontFamily(FontFamily.montserrat).fontSize(14.5);
  }

  static AppFontType get px13 {
    return const AppFontFamily(FontFamily.montserrat).fontSize(15);
  }

  static AppFontType get px14 {
    return const AppFontFamily(FontFamily.montserrat).fontSize(16);
  }

  static AppFontType get px15 {
    return const AppFontFamily(FontFamily.montserrat).fontSize(16.5);
  }

  static AppFontType get px16 {
    return const AppFontFamily(FontFamily.montserrat).fontSize(17.5);
  }

  static AppFontType get px18 {
    return const AppFontFamily(FontFamily.montserrat).fontSize(19.5);
  }

  static AppFontType get px20 {
    return const AppFontFamily(FontFamily.montserrat).fontSize(20.5);
  }
}
