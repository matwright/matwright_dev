
import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';
import 'package:matwright_dev/source/AppLocalizations.dart';
import 'package:matwright_dev/source/widget/AppBar/AppBarMain.dart';
import 'package:matwright_dev/source/widget/CenteredView.dart';
import 'package:matwright_dev/source/widget/NavigationBar/BottomNav.dart';

class About extends StatefulWidget {
  About({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _AboutState createState() => _AboutState();
}

class _AboutState extends State<About> {

  @override
  Widget build(BuildContext context) {

    Locale myLocale = Localizations.localeOf(context);
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar:  AppBarMain(title:AppLocalizations(myLocale).translate('aboutTitle')),

      body: CenteredView(
        child: Column(

children: <Widget>[
  AvatarGlow(
      startDelay: Duration(milliseconds: 1000),

      endRadius: (size.width > 600 ? 100.0 : size.width / 5),
      duration: Duration(milliseconds: 3000),
      repeat: true,
      showTwoGlows: true,
      repeatPauseDuration: Duration(milliseconds: 500),
      child: CircleAvatar(

        backgroundImage: AssetImage('assets/matwright.jpg'),
        radius: (size.width > 600 ? 180.0 : size.width / 6),
        child: Container(),
      )),
      Container(
          height: MediaQuery.of(context).size.height.toDouble()-320,
          child:
          Scrollbar(

              child:     ListView(shrinkWrap: true,
            children: <Widget>[
              Text(AppLocalizations(myLocale).translate('aboutHeading'),style: TextStyle(fontSize: 21),),

              Text(AppLocalizations(myLocale).translate('aboutDescription'),overflow: TextOverflow.fade,)],
          )),

      )







          ],
        ),
      )
        ,bottomNavigationBar: BottomNav(selectedIndex: 1)
    );
  }


}
