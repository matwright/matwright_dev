
import 'package:flutter/material.dart';
import 'package:matwright_dev/source/screen/home/HomeContentDesktop.dart';
import 'package:matwright_dev/source/screen/home/HomeContentMobile.dart';
import 'package:matwright_dev/source/widget/AppBar/AppBarDesktop.dart';
import 'package:matwright_dev/source/widget/AppBar/AppBarMain.dart';
import 'package:matwright_dev/source/widget/AppBar/AppBarMobile.dart';
import 'package:matwright_dev/source/widget/CenteredView.dart';
import 'package:matwright_dev/source/widget/NavigationBar/NavigationBar.dart';
import 'package:responsive_builder/responsive_builder.dart';
class Home extends StatefulWidget {
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

class _HomeState extends State<Home> {

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar:  AppBarMain(),

      body: CenteredView(
        child: Column(

children: <Widget>[

            NavigationBar(),
        Expanded(
          child: ScreenTypeLayout(
            mobile: HomeContentMobile(),
            desktop: HomeContentDesktop()

          ))
          ],
        ),
      )
    );
  }
}
