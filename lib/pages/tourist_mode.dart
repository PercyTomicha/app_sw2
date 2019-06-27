import 'package:flutter/material.dart';

class TouristMode extends StatelessWidget {
  static const String routeName='/modo_turista';
 @override
 Widget build(BuildContext context) {
  return new Scaffold(
    appBar: new AppBar(
      title: new Text('Modo Turista'),
    ),
    body: new Container(
      child: new Center(
        child: new Text('Pantalla de Modo Turista'),
      ),
    ),
  );
 }
}