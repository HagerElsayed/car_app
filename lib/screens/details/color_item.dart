import 'package:car_app/config/size_config.dart';
import 'package:car_app/constants/color.dart';
import 'package:car_app/extension/color_extention.dart';
import 'package:flutter/material.dart';

class ColorItem extends StatelessWidget {
  const ColorItem({Key key, @required this.color, this.isSelected = false})
      : super(key: key);

  final String color;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: Padding(
          padding: const EdgeInsets.all(2.0),
          child: Container(
            height: SizeConfig.safeBlockVertical * 6,
            width: SizeConfig.safeBlockHorizontal * 6,
            decoration: BoxDecoration(
                color: HexColor(color),
                shape: BoxShape.circle,
                border:
                    Border.all(color: kBorderColor, width: isSelected ? 3 : 0)),
          )),
    );
  }
}
