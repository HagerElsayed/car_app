import 'package:car_app/screens/list/wish_list.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
      home: WishListPage(title: 'Wishlist'),
    );
  }
}
