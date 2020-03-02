
import 'dart:html';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:matwright_dev/source/AppLocalizations.dart';
import 'package:matwright_dev/source/widget/AppBar/AppBarMain.dart';
import 'package:matwright_dev/source/widget/CenteredView.dart';
import 'package:matwright_dev/source/widget/NavigationBar/BottomNav.dart';

final GlobalKey<FormBuilderState> _fbKey = GlobalKey<FormBuilderState>();
class Contact extends StatefulWidget {
  Contact({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _ContactState createState() => _ContactState();
}

class _ContactState extends State<Contact> {

  @override
  Widget build(BuildContext context) {
    Locale myLocale = Localizations.localeOf(context);

    return Scaffold(
      appBar:  AppBarMain(title:AppLocalizations(myLocale).translate('contactTitle')),

      body: CenteredView(

        child: Column(

children: <Widget>[


  Column(
    children: <Widget>[
      Container(
        height: MediaQuery.of(context).size.height.toDouble()-200,
        child:  FormBuilder(
          key: _fbKey,

          autovalidate: true,
          child: ListView(
            children: <Widget>[
              FormBuilderTextField(
                attribute: "name",
                validators: [FormBuilderValidators.min(3),FormBuilderValidators.required()],
                decoration:
                InputDecoration(labelText:AppLocalizations(myLocale).translate('contactName')),
              )
              ,

              FormBuilderTextField(
                attribute: "email",
                validators: [FormBuilderValidators.email(),FormBuilderValidators.required()],
                decoration:
                InputDecoration(labelText: AppLocalizations(myLocale).translate('contactEmail')),
              )
              ,



              FormBuilderFilterChip(
                decoration: InputDecoration(labelText:AppLocalizations(myLocale).translate('contactQuery'),labelStyle: TextStyle(fontSize: 21,fontWeight: FontWeight.normal)),
                attribute: "project_type",
                options: [
                  FormBuilderFieldOption(
                      child: Text(AppLocalizations(myLocale).translate('mobile')),
                      value: "mobile"
                  ),
                  FormBuilderFieldOption(
                      child: Text(AppLocalizations(myLocale).translate('web')),
                      value: "web"
                  ),
                  FormBuilderFieldOption(
                      child: Text(AppLocalizations(myLocale).translate('vr')),
                      value: "vr"
                  ),
                  FormBuilderFieldOption(
                      child: Text(AppLocalizations(myLocale).translate('contactAR')),
                      value: "ar"
                  ),
                  FormBuilderFieldOption(
                      child: Text(AppLocalizations(myLocale).translate('contactWearable')),
                      value: "wearable"
                  ),
                  FormBuilderFieldOption(
                      child: Text(AppLocalizations(myLocale).translate('research')),
                      value: "research"
                  ),
                ],
              ),
              FormBuilderTextField(attribute: 'info',maxLines: 5,
                  validators: [FormBuilderValidators.required()]
                  ,
                decoration: InputDecoration(labelText: AppLocalizations(myLocale).translate('contactMessage')),
              )
            ],
          ),
        ),
      )
     ,
      Row(
        children: <Widget>[
          MaterialButton(
            child: Text(AppLocalizations(myLocale).translate('submit')),
            onPressed: () {
              if (_fbKey.currentState.saveAndValidate()) {
                print(_fbKey.currentState.value);
              }
            },
          ),
          MaterialButton(
            child: Text(AppLocalizations(myLocale).translate('reset')),
            onPressed: () {
              _fbKey.currentState.reset();
            },
          ),
        ],
      )
    ],
  )


          ],
        ),
      )
        ,bottomNavigationBar: BottomNav(selectedIndex: 2)
    );
  }
}
