import 'package:flutter/material.dart';
import 'package:app_sw2/pages/add.dart';
import 'package:app_sw2/pages/owner.dart';
import 'package:app_sw2/pages/home.dart';
import 'package:app_sw2/pages/requests.dart';
import 'package:app_sw2/pages/tourist_mode.dart';

void main() {
  runApp(new MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Home(),
    theme: new ThemeData.dark(),
    routes: <String, WidgetBuilder>{
      Owner.routeName:(BuildContext context) =>new Owner(),
      TouristMode.routeName:(BuildContext context) =>new TouristMode(),
      Add.routeName:(BuildContext context) =>new Add(),
      Requests.routeName:(BuildContext context) =>new Requests()
    },
  ));
}