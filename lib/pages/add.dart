import 'package:flutter/material.dart';

class Add extends StatelessWidget {
  static const String routeName='/agregar';
 @override
 Widget build(BuildContext context) {
  return new Scaffold(
    appBar: new AppBar(
      title: new Text('Agregar'),
    ),
    body: new Container(
      child: new Center(
        child: new Text('Pantalla de Agregar'),
      ),
    ),
  );
 }
}