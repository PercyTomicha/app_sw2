import 'package:flutter/material.dart';

class Owner extends StatelessWidget {
  static const String routeName='/propietario';
 @override
 Widget build(BuildContext context) {
   bool _inputIsValid=true;
  return new Scaffold(
    appBar: new AppBar(
      title: new Text('Propietario'),
    ),
    body: new Container(
      child: Center(
        child: new Column(
          children: <Widget>[
            //Text('',style: TextStyle(fontFamily: 'Gochi Hand',fontSize: 25)),
            Divider(height: 10),
            TextField(
              keyboardType: TextInputType.text,
              style: Theme.of(context).textTheme.body1,
              decoration: InputDecoration(
                labelText: 'Introducir Nombre(s) del Propietario :',
                //errorText: _inputIsValid ? null : 'Por favor Introduzca un Entero!',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0))
                )
              ),
            ),
            /*
            Divider(height: 10),
            TextFormField(
              keyboardType: TextInputType.text,
              style: Theme.of(context).textTheme.body1,
              decoration: InputDecoration(
                labelText: 'Introduzca Apellido Paterno del Propietario :',
                //errorText: _inputIsValid ? null : 'Por favor Introduzca un Entero!',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0))
                )
              ),
              validator: (value){
                if(value.isEmpty){
                  return 'Es Obligatorio rellenar este Campo';
                }
              },
            ),*/
            Divider(height: 10),
            TextField(
              keyboardType: TextInputType.text,
              style: Theme.of(context).textTheme.body1,
              decoration: InputDecoration(
                labelText: 'Introduzca Apellido(s) del Propietario :',
                errorText: _inputIsValid ? null : 'Por favor Introduzca un Entero!',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0))
                )
              ),
            ),
            Divider(height: 10),
            
            TextField(
              keyboardType: TextInputType.datetime,
              style: Theme.of(context).textTheme.body1,
              decoration: InputDecoration(
                labelText: 'Introduzca Fecha de Nacimiento :',
                errorText: _inputIsValid ? null : 'Por favor Introduzca un Entero!',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0))
                )
              ),
            ),
          ])
      )
    )
  );
 }
}