import 'package:car_app/config/size_config.dart';
import 'package:car_app/constants/color.dart';
import 'package:flutter/material.dart';

class RoundButton extends StatelessWidget {
  final String buttonTitle;
  final Function onPressed;
  final double width;
  RoundButton({this.buttonTitle, this.onPressed, this.width});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(SizeConfig.defaultSize),
      child: SizedBox(
        width: width ?? double.infinity,
        height: SizeConfig.defaultSize * 4,
        child: FlatButton(
          color: kDefaultAppColor,
          shape: new RoundedRectangleBorder(
            borderRadius: new BorderRadius.circular(5.0),
          ),
          onPressed: onPressed,
          child: Text(
            buttonTitle,
            style: TextStyle(
                color: Colors.white, fontSize: SizeConfig.defaultSize * 1.6),
          ),
        ),
      ),
    );
  }
}
