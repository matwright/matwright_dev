
import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AvatarWidget extends StatelessWidget {
  @required final double size;
  const AvatarWidget({Key key, this.size}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AvatarGlow(
      startDelay: Duration(milliseconds: 500),
      glowColor: Colors.blue,
      endRadius: size*.75,
      duration: Duration(milliseconds: 3000),
      repeat: true,
      showTwoGlows: true,
      repeatPauseDuration: Duration(milliseconds: 100),
      child: Material(
        elevation: 8.0,
        shape: CircleBorder(),
        child: CircleAvatar(
          backgroundColor: Colors.grey[100],
          child: Image.asset('assets/matwright.jpg', height: size,),
          radius:size/2,

        ),
      ),
      shape: BoxShape.circle,
      animate: true,
      curve: Curves.bounceInOut,
    );
  }}