
import 'package:flutter/material.dart';
import 'package:matwright_dev/social_icons_icons.dart';
import 'package:matwright_dev/source/screen/home/HomeIntro.dart';
import 'package:matwright_dev/source/widget/LatestPostsWidget.dart';
import 'package:url_launcher/url_launcher.dart';
class HomeContentMobile extends StatelessWidget  {
  HomeContentMobile({Key key}) : super(key: key);

  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        HomeIntro(),
        Center(
          child:     Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              IconButton(
                  icon: Icon(Icons.import_contacts, color: Colors.white30),
                  onPressed: () async {
                    await launch('https://blog.matwright.dev');
                  }),
              SizedBox(
                width: 5,
              ),
              IconButton(
                  icon: Icon(SocialIcons.github, color: Colors.white30),
                  onPressed: () async {
                    await launch('https://github.com/matwright');
                  }),
              SizedBox(
                width: 5,
              ),
              IconButton(
                  icon: Icon(SocialIcons.linkedin, color: Colors.white30),
                  onPressed: () async {
                    await launch(
                        'https://www.linkedin.com/in/matthew-wright-46775218a/');
                  }),
              SizedBox(
                width: 5,
              ),
              IconButton(
                  icon: Icon(SocialIcons.twitter, color: Colors.white30),
                  onPressed: () async {
                    await launch('https://twitter.com/_MatWright_');
                  }),
              SizedBox(
                width: 5,
              ),
              IconButton(
                  icon: Icon(SocialIcons.stackoverflow_1, color: Colors.white30),
                  onPressed: () async {
                    await launch('https://github.com/matwright');
                  }),
              SizedBox(
                width: 5,
              ),
              IconButton(
                  icon: Icon(SocialIcons.youtube, color: Colors.white30),
                  onPressed: () async {
                    await launch(
                        'https://www.youtube.com/channel/UCwT2MNAhGc_56hg9xGfbvSw');
                  }),
            ],
          ),
        ),

        SizedBox(height: 25,),
LatestPostsWidget()
      ],
    );
  }
}