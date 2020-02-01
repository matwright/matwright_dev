import 'package:flutter/material.dart';
import 'package:matwright_dev/source/widget/NavigationBar/NavigationBarDesktop.dart';
import 'package:matwright_dev/source/widget/NavigationBar/NavigationBarItem.dart';
import 'package:matwright_dev/source/widget/NavigationBar/NavigationBarLogo.dart';
import 'package:matwright_dev/source/widget/NavigationBar/NavigationBarMobile.dart';
import 'package:responsive_builder/responsive_builder.dart';
class AppBarDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return AppBar(
      // Here we take the value from the Home object that was created by
      // the App.build method, and use it to set our appbar title.
      centerTitle: true,
      elevation: 0.0,
      title: Text("Mat Wright - Creative App Development",),
      leading: Icon(Icons.account_circle),

      actions: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Icon(
            Icons.search,
            color: Colors.black,
          ),
        )
      ],
    );
  }
}
