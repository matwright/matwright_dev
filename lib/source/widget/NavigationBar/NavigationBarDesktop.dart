import 'package:flutter/material.dart';
import 'package:matwright_dev/source/widget/NavigationBar/NavigationBarItem.dart';
import 'package:matwright_dev/source/widget/NavigationBar/NavigationBarLogo.dart';
class NavigationBarDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,

      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[


         Image.asset('assets/logoWhite.png'),


          Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              NavigationBarItem('Bio',Icons.face),
              SizedBox(
                width: 20,
              ),
              NavigationBarItem('Blog',Icons.collections_bookmark),
              SizedBox(
                width: 20,
              ),

              NavigationBarItem('Stuff',Icons.build),
              SizedBox(
                width: 20,
              ),
              NavigationBarItem('Art',Icons.format_paint),
              SizedBox(
                width: 20,
              ),
              NavigationBarItem('Connect',Icons.chat),
            ],
          )
        ],
      ),
    );
  }
}
