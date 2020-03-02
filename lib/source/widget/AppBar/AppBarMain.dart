import 'package:flutter/material.dart';
import 'package:matwright_dev/source/AppLocalizations.dart';
import 'package:matwright_dev/source/widget/AppBar/AppBarDesktop.dart';
import 'package:matwright_dev/source/widget/AppBar/AppBarMobile.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:url_launcher/url_launcher.dart';
class AppBarMain extends StatelessWidget implements PreferredSizeWidget {
  final double height=40;
  final String title;

   AppBarMain({
    Key key,this.title
  }) : super(key: key);
  @override
  Size get preferredSize => Size.fromHeight(height);
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
        mobile:    AppBarMobile(title: title,),
        tablet: AppBarDesktop(title: title)
    );
  }
}
