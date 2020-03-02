import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_widget_from_html_core/flutter_widget_from_html_core.dart';
import 'package:matwright_dev/source/AppLocalizations.dart';
import 'package:matwright_dev/source/widget/AppBar/AppBarMain.dart';
import 'package:matwright_dev/source/widget/NavigationBar/BottomNav.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import 'dart:async';
class Legal extends StatefulWidget {
  Legal({Key key, this.title}) : super(key: key);


  final String title;

  @override
  _LegalState createState() => _LegalState();
}

class _LegalState extends State<Legal> {





  @override
  Widget build(BuildContext context) {
    Locale myLocale = Localizations.localeOf(context);


    final Size size = MediaQuery.of(context).size;
    return Scaffold(
        appBar:  AppBarMain(title:AppLocalizations(myLocale).translate('legal')),

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

  return await rootBundle.loadString('legal.'+local+'.html');
}