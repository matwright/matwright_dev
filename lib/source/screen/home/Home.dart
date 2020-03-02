
import 'package:animated_background/animated_background.dart';
import 'package:flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:matwright_dev/source/AppLocalizations.dart';
import 'package:matwright_dev/source/screen/home/HomeContentDesktop.dart';
import 'package:matwright_dev/source/screen/home/HomeContentMobile.dart';
import 'package:matwright_dev/source/widget/AppBar/AppBarMain.dart';
import 'package:matwright_dev/source/widget/CenteredView.dart';
import 'package:matwright_dev/source/widget/DrawerWidget.dart';
import 'package:matwright_dev/source/widget/NavigationBar/BottomNav.dart';
import 'package:matwright_dev/source/widget/NavigationBar/NavigationBar.dart';
import 'package:responsive_builder/responsive_builder.dart';




class Home extends StatefulWidget  {
  Home({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with TickerProviderStateMixin{


  @override
  Widget build(BuildContext context) {
    Locale myLocale = Localizations.localeOf(context);

    return Scaffold(
      appBar:  AppBarMain(title:AppLocalizations(myLocale).translate('home')),
drawer: DrawerWidget(),
      body: CenteredView(
        child:AnimatedBackground(
            vsync: this,
            behaviour: SpaceBehaviour (),
            child:
         Column(

children: <Widget>[

            NavigationBar(),
        Expanded(
          child: ScreenTypeLayout(
            mobile: HomeContentMobile(),
            desktop: HomeContentDesktop()

          ))






          ],
        )
      )
      ),
        floatingActionButton: FloatingActionButton(
    hoverColor: Theme.of(context).hintColor,
    backgroundColor: Theme.of(context).hintColor,
    child: Icon(Icons.build,color:Theme.of(context).primaryColor),

    onPressed: (){
    Flushbar(
    title:  AppLocalizations(myLocale).translate('popupTitle'),
    backgroundColor: Colors.black87,
    shouldIconPulse:true,
    message:   AppLocalizations(myLocale).translate('popupMessage'),
    icon: Icon(
    Icons.info_outline,
    size: 28.0,
    color: Colors.blue[300],
    ),
    duration:  Duration(seconds: 5),
    )..show(context);
    },

    )
        ,bottomNavigationBar: BottomNav(selectedIndex: 0)
    );
  }


}

