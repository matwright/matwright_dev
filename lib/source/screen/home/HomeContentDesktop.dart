
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:matwright_dev/source/screen/home/HomeIntro.dart';
import 'package:flare_flutter/flare_actor.dart';
import 'package:flare_flutter/flare_controls.dart';
import 'package:responsive_builder/responsive_builder.dart';
class HomeContentDesktop extends StatelessWidget  {
  HomeContentDesktop({Key key}) : super(key: key);

  Widget build(BuildContext context) {
    final FlareControls _controls = FlareControls();
    return ResponsiveBuilder(builder: (context, sizingInformation) {
      var screenWidth=sizingInformation.screenSize.width;
      if(screenWidth>=1400){
        screenWidth=1400;
      }
      return Row(

        children: <Widget>[
          HomeIntro(),
          Container(
            width: screenWidth-560,
              decoration: BoxDecoration(
                // Box decoration takes a gradient
                gradient: RadialGradient(


                  // Add one stop for each color. Stops should increase from 0 to 1
//stops: [0.2,0.5,1],

                  colors: [
                    // Colors are easy thanks to Flutter's Colors class.


                    Colors.indigo[600],
                    Colors.indigo[800],
                    Theme.of(context).canvasColor,
                  ],
                ),
              ),
            child:
          //  Image.asset('assets/coder.png',)

            FlareActor('assets/flare/Coding.flr',
              alignment: Alignment.center,
              fit: BoxFit.contain,
              animation: 'Untitled',
              isPaused: false
              ,
              controller: _controls,)


          )

        ],
      );
    }
    );
}}