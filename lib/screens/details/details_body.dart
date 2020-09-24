import 'package:car_app/components/common_text.dart';
import 'package:car_app/components/round_button.dart';
import 'package:car_app/config/size_config.dart';
import 'package:car_app/constants/color.dart';
import 'package:car_app/models/car_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'color_container.dart';

class DetailsBody extends StatelessWidget {
  const DetailsBody({
    Key key,
    @required this.carObject,
  }) : super(key: key);

  final Car carObject;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/background_image.png"),
          fit: BoxFit.cover,
        ),
      ),
      child: SingleChildScrollView(
        child: Stack(
          children: [
            Positioned(
              top: 60,
              left: 20,
              child: InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: SvgPicture.asset('assets/icons/Close.svg')),
            ),
            Column(
              children: [
                SizedBox(
                  height: SizeConfig.blockSizeVertical * 40,
                ),
                Container(
                  margin:
                      EdgeInsets.only(top: SizeConfig.safeBlockVertical * 1),
                  padding: EdgeInsets.only(
                    top: SizeConfig.safeBlockVertical * 6,
                    left: 20,
                    right: 20,
                  ),
                  height: SizeConfig.blockSizeVertical * 60,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: const Radius.circular(40.0),
                        topRight: const Radius.circular(40.0),
                      )),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CommonText(
                            text: carObject.type,
                            textColor: kDefaultAppColor,
                            fontWeight: FontWeight.w600,
                          ),
                          InkWell(
                              onTap: () {},
                              child: SvgPicture.asset(
                                  "assets/icons/empty_heart.svg")),
                        ],
                      ),
                      SizedBox(
                        height: SizeConfig.safeBlockVertical,
                      ),
                      ColorContainer(carObject: carObject),
                      CommonText(
                        text: "Features:",
                        fontSize: 4.5,
                      ),
                      CommonText(
                        text: carObject.features,
                        fontSize: 3.5,
                        textColor: kDescriptionColor,
                      ),
                      SizedBox(
                        height: SizeConfig.blockSizeVertical * 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CommonText(
                            text: '${carObject.price}',
                          ),
                          RoundButton(
                            buttonTitle: "BUY NOW",
                            onPressed: () {},
                            width: SizeConfig.safeBlockHorizontal * 50,
                          )
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
            Center(
              child: Padding(
                padding:
                    EdgeInsets.only(top: SizeConfig.blockSizeVertical * 33),
                child: Image.asset(
                  carObject.image,
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
