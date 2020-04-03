import 'dart:ui';
import 'package:blendtv/lib/screenutils/flutter_screenutil.dart';
import 'package:flutter/material.dart';
import 'package:blendtv/res/colors.dart';
import 'package:blendtv/lib/screenutils/size_extension.dart';
import 'package:blendtv/lib/screenutils/screenutil.dart';
import 'package:blendtv/lib/screenutils/flutter_screenutil.dart';

class TextStylesUtils {
  final styleAvenir20TextSelectW500 = TextStyle(
      fontFamily: 'AvenirNext',
      color: ColorsUtils.textSelect,
      fontSize: ScreenUtil().setSp(24, allowFontScalingSelf: true),
      fontWeight: FontWeight.w500,
      fontStyle: FontStyle.normal);
}
