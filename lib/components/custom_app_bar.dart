import 'package:car_app/constants/color.dart';
import 'package:car_app/constants/dimens.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  const CustomAppBar({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      brightness: Brightness.light,
      title: Text(
        title,
        style: TextStyle(color: kTextColor),
      ),
      elevation: 0.0,
      backgroundColor: Colors.transparent,
      leading: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SvgPicture.asset(
          'assets/icons/menu.svg',
          height: 15,
          width: 15,
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(70);
}
