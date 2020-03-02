
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:matwright_dev/source/screen/about/About.dart';
import 'package:matwright_dev/source/screen/contact/Contact.dart';
import 'package:matwright_dev/source/screen/home/Home.dart';
import 'package:matwright_dev/source/screen/legal/Legal.dart';
import 'package:matwright_dev/source/screen/terms/Terms.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var darkTheme=ThemeData.dark();

    return MaterialApp(

      localizationsDelegates: [
        // ... app-specific localization delegate[s] here
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate
      ],
      supportedLocales: [
        const Locale('en'), // English
        const Locale('fr'), // French
      ],
      title: 'Mat Wright',
        debugShowCheckedModeBanner: false,
        themeMode: ThemeMode.dark,
        darkTheme: darkTheme,
      home: Home(title: 'Mat Wright Home Page'),
      initialRoute: '/',
      routes: {

        // When navigating to the "/second" route, build the SecondScreen widget.
        '/about': (context) => About(),
        '/contact': (context) => Contact(),
        '/legal': (context) => Legal(),
        '/terms': (context) => Terms(),
      },
    );
  }
}
