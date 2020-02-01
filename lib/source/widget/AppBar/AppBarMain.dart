import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class AppBarMain extends StatelessWidget implements PreferredSizeWidget {
  final double height=40;
  const AppBarMain({
    Key key
  }) : super(key: key);
  @override
  Size get preferredSize => Size.fromHeight(height);
  @override
  Widget build(BuildContext context) {

    return AppBar(
      centerTitle: true,
      elevation: 0.0,
      title: Text("Mat Wright - Creative App Development",),
      leading: ScreenTypeLayout(
        mobile:    IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {},
        ),
        tablet: Icon(Icons.account_circle),
      ),

      actions: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Icon(
            Icons.search,
            color: Colors.black,
          ),
        )
      ],
    );
  }
}
