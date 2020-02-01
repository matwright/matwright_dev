import 'package:flutter/cupertino.dart';
import 'package:responsive_builder/responsive_builder.dart';

class CenteredView extends StatelessWidget {
  final Widget child;
  const CenteredView({Key key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(builder: (context, sizingInformation)
    {
       double horizontalPadding =
       (sizingInformation.deviceScreenType == DeviceScreenType.Desktop
           ? 30.0
           : 20.0);
    return Container(
      padding:  EdgeInsets.symmetric(horizontal: horizontalPadding, vertical: 10),
      alignment: Alignment.topCenter,
      child: ConstrainedBox(
        constraints: BoxConstraints(maxWidth: 1400),
        child: child,
      ),
    );
  });}
}