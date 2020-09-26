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
    double _defaultSize = SizeConfig.defaultSize;
    return Container(
      height: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/background_image.png"),
          fit: BoxFit.fill,
        ),
      ),
      child: SingleChildScrollView(
        child: Stack(
          children: [
            Positioned(
              top: _defaultSize * 5,
              left: _defaultSize * 3,
              child: InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: SvgPicture.asset('assets/icons/Close.svg')),
            ),
            Column(
              children: [
                SizedBox(
                  height: _defaultSize *
                      (MediaQuery.of(context).orientation ==
                              Orientation.portrait
                          ? 24 //34
                          : 9),
                ),
                Container(
                  margin: EdgeInsets.only(top: _defaultSize * 3),
                  padding: EdgeInsets.symmetric(
                    horizontal: _defaultSize * 3,
                  ),
                  height: SizeConfig.screenHeight -
                      (MediaQuery.of(context).orientation ==
                              Orientation.portrait
                          ? 300 //34
                          : 0),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(_defaultSize * 4),
                        topRight: Radius.circular(_defaultSize * 4),
                      )),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      SizedBox(
                        height: _defaultSize * 2,
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
                        height: _defaultSize,
                      ),
                      ColorContainer(carObject: carObject),
                      CommonText(
                        text: "Features:",
                        fontSize: 1.6,
                      ),
                      CommonText(
                        text: carObject.features,
                        fontSize: 1.2,
                        textColor: kDescriptionColor,
                      ),
                      SizedBox(
                        height: _defaultSize * 5,
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
                            width: _defaultSize * 15,
                          )
                        ],
                      ),
//                      SizedBox(
//                        height: _defaultSize * 5,
//                      )
                    ],
                  ),
                )
              ],
            ),
            Center(
              child: Padding(
                padding: EdgeInsets.only(
                    top: _defaultSize *
                        (MediaQuery.of(context).orientation ==
                                Orientation.portrait
                            ? 20 //30
                            : 5)),
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
