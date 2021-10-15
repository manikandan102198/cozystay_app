import 'package:flutter/material.dart';

import 'app_color.dart';

class ThemeText {
  const ThemeText._();

  static TextStyle _headline6 = TextStyle(
    fontSize: 21,
    color: AppColor.blackColor,
    fontWeight: FontWeight.w500,
  );

  static TextStyle _headline5 = TextStyle(
    fontSize: 18,
    color: AppColor.blackColor,
    fontWeight: FontWeight.w500,
  );

  static TextStyle _headline4 = TextStyle(
    fontSize: 10,
    color: Colors.white,
    fontWeight: FontWeight.normal,
  );

  static TextStyle _headline3 = TextStyle(
    fontSize: 14,
    color: Colors.white,
    fontWeight: FontWeight.w600,
  );

  static TextStyle _whiteBodyText1 = TextStyle(
    fontSize: 7.5,
    color: Colors.white,
    fontWeight: FontWeight.w600,
  );

  static TextStyle _whiteBodyText2 = TextStyle(
    fontSize: 19,
    color: Colors.white,
    fontWeight: FontWeight.w600,
  );

  static TextStyle _smallCation = TextStyle(
    fontSize: 12,
    color: AppColor.lightGreyColor,
    fontWeight: FontWeight.normal,
  );

  static TextStyle _blackSubTitle1 = TextStyle(
    fontSize: 13,
    color: AppColor.blackColor,
    fontWeight: FontWeight.normal,
  );

  static TextStyle _blackSubTitle2 = TextStyle(
    fontSize: 16,
    color: AppColor.blackColor,
    fontWeight: FontWeight.bold,
  );

  static TextTheme getTextTheme() {
    return TextTheme(
        headline6: _headline6,
        headline5: _headline5,
        headline4: _headline4,
        headline3: _headline3,
        subtitle1: _blackSubTitle1,
        subtitle2: _blackSubTitle2,
        bodyText1: _whiteBodyText1,
        bodyText2: _whiteBodyText2,
        caption: _smallCation);
  }
}

extension ThemeTextExtension on TextTheme {
  TextStyle get mediumBlackText => subtitle1!.copyWith(fontSize: 15);

  TextStyle get semiMediumBlackText => bodyText1!.copyWith(
        fontSize: 16,
        color: AppColor.blackColor,
      );

  TextStyle get semiBoldwhiteText => bodyText1!.copyWith(
        fontSize: 15,
      );

  TextStyle get boldBlackText => headline6!.copyWith(
        fontSize: 21,
      );

  TextStyle get brownText => headline6!.copyWith(
        fontSize: 21,
        color: AppColor.brownColor,
      );

  TextStyle get greyText =>
      caption!.copyWith(fontSize: 14, color: AppColor.mediumGreyColor);
}
