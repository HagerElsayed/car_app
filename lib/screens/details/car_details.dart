import 'package:car_app/models/car_model.dart';
import 'package:flutter/material.dart';
import 'details_body.dart';

class CarDetails extends StatelessWidget {
  final Car carObject;
  CarDetails({@required this.carObject});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DetailsBody(carObject: carObject),
    );
  }
}
