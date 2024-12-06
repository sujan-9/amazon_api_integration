import 'package:flutter/cupertino.dart';
import 'package:nipuna_app/app/core/constants/color_constants.dart';
import 'package:nipuna_app/app/core/utils/size_config.dart';

Widget buildHeaderText({
  required String text,
  required double fontSize,
  Color color = ColorConstants.primaryColor,
  FontWeight fontWeight = FontWeight.w700,
  TextAlign? textAlign,
  TextDecoration? textDecoration,
  int? maxLines,
  TextOverflow? textOverflow,
  bool? softWrap,
}) {
  return Text(
    text,
    style: TextStyle(
      fontSize: fontSize,
      color: color,
      fontWeight: fontWeight,
      decoration: textDecoration,
    ),
    textAlign: textAlign,
    maxLines: maxLines,
    overflow: textOverflow,
    softWrap: softWrap,
  );
}

Widget buildBodyText(String text,
    {Color color = ColorConstants.primaryColor,
    TextDecoration decoration = TextDecoration.none,
    TextAlign align = TextAlign.center,
    TextOverflow overflow = TextOverflow.clip}) {
  return Text(
    text,
    textAlign: align,
    style: TextStyle(
        fontSize: SizeConfig.blockSizeHorizontal * 3.5,
        fontWeight: FontWeight.w600,
        color: color,
        decoration: decoration,
        overflow: overflow),
  );
}
