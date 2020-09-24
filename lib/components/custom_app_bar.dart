import 'package:car_app/components/common_text.dart';
import 'package:car_app/config/size_config.dart';
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
      title: CommonText(
        text: title,
      ),
      elevation: 0.0,
      backgroundColor: Colors.transparent,
      leading: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SvgPicture.asset(
          'assets/icons/menu.svg',
          height: SizeConfig.defaultSize * 2,
          width: SizeConfig.defaultSize * 2,
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(70);
}
