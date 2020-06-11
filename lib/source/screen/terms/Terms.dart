import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_widget_from_html_core/flutter_widget_from_html_core.dart';
import 'package:matwright_dev/source/AppLocalizations.dart';
import 'package:matwright_dev/source/widget/AppBar/AppBarMain.dart';
import 'package:matwright_dev/source/widget/NavigationBar/BottomNav.dart';
import 'dart:async';
class Terms extends StatefulWidget {
  Terms({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _TermsState createState() => _TermsState();
}

class _TermsState extends State<Terms> {





  @override
  Widget build(BuildContext context) {
    Locale myLocale = Localizations.localeOf(context);


    return Scaffold(
      appBar:  AppBarMain(title:AppLocalizations(myLocale).translate('terms')),

      body:
      FutureBuilder<String>(
        future: _loadLocalHTML(myLocale.toString()),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
return Scrollbar(
  child: ListView(
    children: <Widget>[
  HtmlWidget(
  snapshot.data.toString()
)
    ],
  ),
);


          } else if (snapshot.hasError) {
            return Scaffold(
              body: Center(
                child: Text("${snapshot.error}"),
              ),
            );
          }
          return Scaffold(
            body: Center(child: CircularProgressIndicator()),
          );
        },
      )

        ,bottomNavigationBar: BottomNav(selectedIndex: 1)
    );
  }


}

Future<String> _loadLocalHTML(String local) async {

  return await rootBundle.loadString('terms.'+local+'.html');
}