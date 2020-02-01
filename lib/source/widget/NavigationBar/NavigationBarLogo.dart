import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class NavBarLogo extends StatelessWidget{

const NavBarLogo({Key key}) : super(key: key);

@override
Widget build(BuildContext context) {
  return SizedBox(
    height: 80,
    width: 150,
    child: AvatarGlow(
      startDelay: Duration(milliseconds: 1000),
      glowColor: Colors.blue,
      endRadius: 100.0,
      duration: Duration(milliseconds: 3000),
      repeat: true,
      showTwoGlows: true,
      repeatPauseDuration: Duration(milliseconds: 100),
      child: Material(
        elevation: 8.0,
        shape: CircleBorder(),
        child: CircleAvatar(
          backgroundColor:Colors.grey[100] ,
          child: Image.asset('assets/matwright.jpg',height: 90,),
          radius: 40.0,

        ),
      ),
      shape: BoxShape.circle,
      animate: true,
      curve: Curves.bounceInOut,
    )
  );
}

}