import 'package:car_app/config/size_config.dart';
import 'package:car_app/constants/color.dart';
import 'package:car_app/constants/dimens.dart';
import 'package:flutter/material.dart';

class CommonText extends StatelessWidget {
  final String text;
  final Color textColor;
  final FontWeight fontWeight;
  final double fontSize;
  final double padding;
  const CommonText(
      {Key key,
      @required this.text,
      this.textColor,
      this.fontSize,
      this.fontWeight,
      this.padding})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.only(top: SizeConfig.safeBlockVertical * (padding ?? 1)),
      child: Text(
        text,
        style: TextStyle(
            color: textColor ?? kTextColor,
            fontWeight: fontWeight ?? FontWeight.w400,
            fontSize: SizeConfig.safeBlockHorizontal * (fontSize ?? 5)),
      ),
    );
  }
}
