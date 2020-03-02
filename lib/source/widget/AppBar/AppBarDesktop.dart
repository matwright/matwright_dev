import 'package:flutter/material.dart';
import 'package:matwright_dev/social_icons_icons.dart';
import 'package:url_launcher/url_launcher.dart';

class AppBarDesktop extends StatelessWidget {
  final String title;

  AppBarDesktop({this.title});

  @override
  Widget build(BuildContext context) {
    Locale myLocale = Localizations.localeOf(context);
    return AppBar(
      // Here we take the value from the Home object that was created by
      // the App.build method, and use it to set our appbar title.
      centerTitle: true,

      elevation: 0.0,
      title: Text('Mat Wright | ' + title),


      actions: <Widget>[
        IconButton(
            icon: Icon(Icons.import_contacts, color: Colors.white30),
            onPressed: () async {
              await launch('https://blog.matwright.dev');
            }),
        SizedBox(
          width: 10,
        ),
        IconButton(
            icon: Icon(SocialIcons.github, color: Colors.white30),
            onPressed: () async {
              await launch('https://github.com/matwright');
            }),
        SizedBox(
          width: 10,
        ),
        IconButton(
            icon: Icon(SocialIcons.linkedin, color: Colors.white30),
            onPressed: () async {
              await launch(
                  'https://www.linkedin.com/in/matthew-wright-46775218a/');
            }),
        SizedBox(
          width: 10,
        ),
        IconButton(
            icon: Icon(SocialIcons.twitter, color: Colors.white30),
            onPressed: () async {
              await launch('https://twitter.com/_MatWright_');
            }),
        SizedBox(
          width: 10,
        ),
        IconButton(
            icon: Icon(SocialIcons.stackoverflow_1, color: Colors.white30),
            onPressed: () async {
              await launch('https://github.com/matwright');
            }),
        SizedBox(
          width: 10,
        ),
        IconButton(
            icon: Icon(SocialIcons.youtube, color: Colors.white30),
            onPressed: () async {
              await launch(
                  'https://www.youtube.com/channel/UCwT2MNAhGc_56hg9xGfbvSw');
            }),
      ],
    );
  }
}
