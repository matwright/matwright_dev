import 'package:flutter/cupertino.dart';
import 'package:matwright_dev/source/widget/ContactButton/ContactDesktopButton.dart';
import 'package:matwright_dev/source/widget/ContactButton/ContactMobileButton.dart';
import 'package:responsive_builder/responsive_builder.dart';

class ContactButton extends StatelessWidget {
  final String title;
  ContactButton(this.title);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: ContactDesktopButton(title),
      tablet: ContactMobileButton(title),
    );
  }
}