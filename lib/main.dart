import 'package:car_app/config/size_config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'components/custom_app_bar.dart';
import 'constants/color.dart';
import 'screens/list/list_body.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Car Demo',
      debugShowCheckedModeBanner: false,
      home: WishListPage(title: 'Wish List'),
    );
  }
}

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
