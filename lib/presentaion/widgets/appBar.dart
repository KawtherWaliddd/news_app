import 'package:flutter/material.dart';

import 'package:news_app/resourses/app_style.dart';
import 'package:news_app/resourses/colors_manager.dart';

class Appbar extends StatelessWidget implements PreferredSizeWidget {
  const Appbar({super.key});
  @override
  Size get preferredSize => const Size.fromHeight(80);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      centerTitle: true,
      title: Text.rich(
        TextSpan(children: [
          TextSpan(
            text: "News",
            style: AppStyle.regularBold28,
          ),
          TextSpan(
            text: " Cloud",
            style: AppStyle.regularBold28.copyWith(
              color: ColorsManager.yellowColor,
            ),
          ),
        ]),
      ),
    );
  }
}
