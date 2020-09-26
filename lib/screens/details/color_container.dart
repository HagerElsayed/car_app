import 'package:car_app/config/size_config.dart';
import 'package:car_app/models/car_model.dart';
import 'package:flutter/material.dart';

import 'color_item.dart';

class ColorContainer extends StatelessWidget {
  const ColorContainer({
    Key key,
    @required this.carObject,
  }) : super(key: key);

  final Car carObject;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: SizeConfig.defaultSize * 3,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: carObject.carColors.length,
        padding: EdgeInsets.only(left: 2.0),
        itemBuilder: (context, index) => ColorItem(
          color: carObject.carColors[index].color,
          isSelected: carObject.carColors[index].isSelected,
        ),
      ),
    );
  }
}
