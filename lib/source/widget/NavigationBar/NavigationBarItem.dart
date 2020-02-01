
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NavigationBarItem extends StatelessWidget {
  final String title;
  final IconData icon;
  const NavigationBarItem(

      this.title,    this.icon, {
        Key key,
      }) : super(key: key);

  @override
  Widget build(BuildContext context) {
return FlatButton.icon(

  icon: Icon(icon), //`Icon` to display
  label: Text(title,style: TextStyle(fontSize: 18)),//`Text` to display
  onPressed: () {
    //Code to execute when Floating Action Button is clicked
    //...
  },
);

  }
}