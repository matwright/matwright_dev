import 'package:flutter/material.dart';
import 'package:matwright_dev/source/AppLocalizations.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({Key key, this.selectedIndex}) : super(key: key);
  final int selectedIndex;

  @override
  _BottomNavState createState() => _BottomNavState();

}

class _BottomNavState extends State<BottomNav> {
  @override
  void initState() {
    print(widget.selectedIndex.toString());
    super.initState();
  }

  void _onItemTapped(int index) {
    setState(() {
      switch (index) {
        case (0):
          Navigator.pushNamed(context, '/');
          break;
        case (1):
          Navigator.pushNamed(context, "/about");
          break;
        case (2):
          Navigator.pushNamed(context, "/contact");
          break;


      }
    });
  }

  @override
  Widget build(BuildContext context) {
    Locale myLocale = Localizations.localeOf(context);
    return BottomNavigationBar(showUnselectedLabels: true,
elevation: 10,unselectedItemColor: Theme.of(context).unselectedWidgetColor,
      currentIndex: widget.selectedIndex,
      type: BottomNavigationBarType.fixed ,
      items: [
        BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: new Text(AppLocalizations(myLocale).translate('home'))
        ),
        BottomNavigationBarItem(
            icon: Icon(Icons.face),
            title: new Text(AppLocalizations(myLocale).translate('aboutTitle'))
        ),
        BottomNavigationBarItem(
            icon: Icon(Icons.contact_mail),
            title: new Text(AppLocalizations(myLocale).translate('contactTitle'))
        )
      ],
      onTap: (index){
        _onItemTapped(index);
      },
    );

  }
}
