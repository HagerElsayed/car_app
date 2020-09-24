import 'package:car_app/components/custom_app_bar.dart';
import 'package:car_app/config/size_config.dart';
import 'package:car_app/constants/color.dart';
import 'package:flutter/material.dart';

import 'list_body.dart';

class WishListPage extends StatefulWidget {
  WishListPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _WishListPageState createState() => _WishListPageState();
}

class _WishListPageState extends State<WishListPage> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: CustomAppBar(
        title: widget.title,
      ),
      backgroundColor: kLightColor,
      body: Body(),
    );
  }
}
