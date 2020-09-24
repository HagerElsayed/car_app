import 'package:car_app/config/size_config.dart';
import 'package:car_app/models/car_model.dart';
import 'package:flutter/material.dart';

import 'car_card.dart';

class Body extends StatelessWidget {
  const Body({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: SizeConfig.defaultSize * 3.5,
        vertical: SizeConfig.defaultSize,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: Repo.cars.length,
              itemBuilder: (context, index) => CarCard(index: index),
            ),
          ),
        ],
      ),
    );
  }
}
