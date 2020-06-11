
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:matwright_dev/source/widget/LatestPostsWidget.dart';

class NavigationBarDesktop extends StatefulWidget {
  @override
  _NavigationBarDesktopState createState() => _NavigationBarDesktopState();
}

class _NavigationBarDesktopState extends State<NavigationBarDesktop> {


  @override
  Widget build(BuildContext context) {


    return Container(
      height: 175,

      child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[

        Expanded(
        flex: 5, // 20%

        child:
            Align(alignment:Alignment.topLeft, child:Image.asset('assets/logoWhite.png')))
         ,
      Expanded(
        flex: 1, // 20%

        child:
          SizedBox(
            width: 30,
          ),
      ),
        //  listPosts()
      Expanded(
        flex: 4, // 20%
        child:
        Align(alignment:Alignment.topRight, child:
      LatestPostsWidget())
      )
        ],
      ),
    );
  }

}
