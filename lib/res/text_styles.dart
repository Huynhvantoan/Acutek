import 'dart:ui';

import 'package:blendtv/lib/screenutils/flutter_screenutil.dart';
import 'package:blendtv/lib/screenutils/screenutil.dart';
import 'package:blendtv/res/colors.dart';
import 'package:flutter/material.dart';

class TextStylesUtils {
  static const FontFamilyRegular = 'Roboto';
  static const FontFamilyLight = 'RobotoLight';
  static const fontFamilyMedium = "RobotoMedium";

  final styleMedium20TextSelect = TextStyle(
    fontFamily: fontFamilyMedium,
    color: ColorsUtils.textSelect,
    fontSize: ScreenUtil().setSp(20, allowFontScalingSelf: true),
    fontStyle: FontStyle.normal,
  );

  final styleMedium20White = TextStyle(
    fontFamily: fontFamilyMedium,
    color: ColorsUtils.white,
    fontSize: ScreenUtil().setSp(20, allowFontScalingSelf: true),
    fontStyle: FontStyle.normal,
  );

  final styleRegular20TextSelect = TextStyle(
    fontFamily: FontFamilyRegular,
    color: ColorsUtils.textSelect,
    fontSize: ScreenUtil().setSp(20, allowFontScalingSelf: true),
    fontStyle: FontStyle.normal,
  );
}
