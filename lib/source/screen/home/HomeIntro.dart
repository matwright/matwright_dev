

import 'package:flutter/cupertino.dart';
import 'package:responsive_builder/responsive_builder.dart';

class HomeIntro extends StatelessWidget {
  const HomeIntro({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return ResponsiveBuilder(builder: (context, sizingInformation)
    {
      var letterSpacing=1.5;
      var textAlignment =
      sizingInformation.deviceScreenType == DeviceScreenType.Desktop
          ? TextAlign.left
          : TextAlign.center;
      double titleSize;
switch(sizingInformation.deviceScreenType){
  case(DeviceScreenType.Desktop):
    titleSize=60;
    break;
  case(DeviceScreenType.Tablet):
    titleSize=45;
    break;

  case(DeviceScreenType.Mobile):
    titleSize= (sizingInformation.screenSize.width>320?28:24);
    letterSpacing=(sizingInformation.screenSize.width>320?1.4:1);

    break;
  case(DeviceScreenType.Watch):
    titleSize=20;
    break;
  default:
    titleSize=21;
}

      double descriptionSize = sizingInformation.deviceScreenType ==
          DeviceScreenType.Mobile ?
      16 : 21;
      return Container(
        width: 500,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

            SizedBox(
              height: 5,
            ),
            Text(
              'CREATIVE APP DEVELOPMENT',
              style: TextStyle(
                fontSize: titleSize,

                fontFamily: "Raleway",
                letterSpacing: letterSpacing,
                shadows: [],
              ),
              textAlign: textAlignment,
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              'I specialise in creating modern apps for a variety of plaforms and endpoints including mobile, web & internet of things.',
              style: TextStyle(fontSize: descriptionSize, height: 1.7),  textAlign: textAlignment,
            ),
          ],
        ),
      );
    });
  }
}