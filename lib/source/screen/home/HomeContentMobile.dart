
import 'package:flutter/material.dart';
import 'package:matwright_dev/source/screen/home/HomeIntro.dart';
import 'package:matwright_dev/source/widget/CenteredView.dart';
import 'package:matwright_dev/source/widget/ContactButton/ContactButton.dart';
import 'package:matwright_dev/source/widget/NavigationBar/NavigationBar.dart';
class HomeContentMobile extends StatelessWidget  {
  HomeContentMobile({Key key}) : super(key: key);

  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        HomeIntro(),
        SizedBox(height: 100,),
        ContactButton('Contact Me'),
      ],
    );
  }
}