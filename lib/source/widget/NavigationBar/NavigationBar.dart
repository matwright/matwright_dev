import 'package:flutter/material.dart';
import 'package:matwright_dev/source/widget/NavigationBar/NavigationBarDesktop.dart';
import 'package:matwright_dev/source/widget/NavigationBar/NavigationBarMobile.dart';
import 'package:responsive_builder/responsive_builder.dart';
class NavigationBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return ScreenTypeLayout(
      mobile: NavigationBarMobile(),
      desktop: NavigationBarDesktop()
    );
  }
}
