import 'package:car_app/components/common_text.dart';
import 'package:car_app/config/size_config.dart';
import 'package:car_app/constants/color.dart';
import 'package:car_app/models/car_model.dart';
import 'package:car_app/screens/details/car_details.dart';
import 'package:car_app/utils/route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CarCard extends StatelessWidget {
  final int index;
  CarCard({@required this.index});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        goToDetails(context);
      },
      child: Padding(
        padding: EdgeInsets.symmetric(
          vertical: SizeConfig.blockSizeVertical * 2,
        ),
        child: Stack(
          children: [
            Container(
              margin: EdgeInsets.only(top: SizeConfig.safeBlockVertical * 12),
              padding: EdgeInsets.only(
//                top: SizeConfig.safeBlockVertical * 6,
                left: 20,
                right: 20,
              ),
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all((Radius.circular(20))),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  SizedBox(
                    height: SizeConfig.safeBlockVertical * 5,
                  ),
                  CommonText(
                    text: Repo.cars[index].type,
                    textColor: kDefaultAppColor,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CommonText(
                        text: '${Repo.cars[index].price}',
                        fontSize: 4,
                      ),
                      InkWell(
                          onTap: () {},
                          child: SvgPicture.asset("assets/icons/heart.svg"))
                    ],
                  ),
                  SizedBox(
                    height: SizeConfig.safeBlockVertical * 5,
                  ),
                ],
              ),
            ),
            Center(
              child: Padding(
                padding: EdgeInsets.only(top: SizeConfig.blockSizeVertical),
                child: Image.asset(
                  Repo.cars[index].image,
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  goToDetails(BuildContext context) {
    Navigator.push(
        context,
        SizeRoute(
            page: CarDetails(
          carObject: Repo.cars[index],
        )));
  }
}
