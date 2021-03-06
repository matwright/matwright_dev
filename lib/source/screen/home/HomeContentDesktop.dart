
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:matwright_dev/source/screen/home/HomeIntro.dart';
import 'package:flare_flutter/flare_actor.dart';
import 'package:flare_flutter/flare_controls.dart';
import 'package:responsive_builder/responsive_builder.dart';

class HomeContentDesktop extends StatefulWidget {
  @override
  _HomeContentDesktopState createState() => _HomeContentDesktopState();
}

class _HomeContentDesktopState extends State<HomeContentDesktop>  with TickerProviderStateMixin  {

  Widget build(BuildContext context) {


    final FlareControls _controls = FlareControls();
    return ResponsiveBuilder(builder: (context, sizingInformation) {
      var screenWidth=sizingInformation.screenSize.width;
      if(screenWidth>=1400){
        screenWidth=1400;
      }

      return

        Row(

        children: <Widget>[
          HomeIntro(),

 Container(
          width: screenWidth-560,
          decoration: BoxDecoration(
            // Box decoration takes a gradient
            gradient: RadialGradient(


              // Add one stop for each color. Stops should increase from 0 to 1
stops: [0.2,0.6,0.9,1],

              colors: [
                // Colors are easy thanks to Flutter's Colors class.
                Colors.indigo[600].withOpacity(0.8),
                Colors.indigo[800].withOpacity(0.6),
                Colors.indigo[800].withOpacity(0.3),
                Colors.black.withOpacity(0.1),
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
}

}