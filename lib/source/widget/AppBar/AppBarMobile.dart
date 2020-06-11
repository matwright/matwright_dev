import 'package:flutter/material.dart';
class AppBarMobile extends StatelessWidget {
   final String title;
   AppBarMobile({this.title});
  @override
  Widget build(BuildContext context) {
    return AppBar(
      // Here we take the value from the Home object that was created by
      // the App.build method, and use it to set our appbar title.
      centerTitle: true,
      elevation: 0.0,
      title: Text(title,)



    );
  }
}
