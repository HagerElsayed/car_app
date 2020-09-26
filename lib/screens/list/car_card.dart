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
    double _defaultSize = SizeConfig.defaultSize;

    return GestureDetector(
      onTap: () {
        goToDetails(context);
      },
      child: Padding(
        padding: EdgeInsets.symmetric(
          vertical: _defaultSize,
        ),
        child: Stack(
          children: [
            Container(
              margin: EdgeInsets.only(top: _defaultSize * 6.5),
              padding: EdgeInsets.only(
                left: _defaultSize * 2,
                right: _defaultSize * 2,
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
                    height: _defaultSize * 4,
                  ),
                  CommonText(
                    text: Repo.cars[index].type,
                    textColor: kDefaultAppColor,
                    fontSize: 1.6,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CommonText(
                        text: '${Repo.cars[index].price}',
                        fontSize: 1.2,
                      ),
                      InkWell(
                          onTap: () {},
                          child: SvgPicture.asset("assets/icons/heart.svg"))
                    ],
                  ),
                  SizedBox(
                    height: _defaultSize * 2,
                  ),
                ],
              ),
            ),
            Center(
              child: Padding(
                padding: EdgeInsets.only(top: _defaultSize),
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
