import 'package:flutter/material.dart';

class Requests extends StatelessWidget {
  static const String routeName='/solicitudes';
 @override
 Widget build(BuildContext context) {
   final numItems=5;
   Widget _buildRow(int idx){
     return ListTile(
       //leading: CircleAvatar(child: Text('C$idx'),backgroundColor: Colors.white70,),
       title: Text('Contacto $idx (#Co_$idx)',style: TextStyle(fontSize: 20)),
       subtitle: Text('contacto$idx@gmail.com'),
       //trailing: Icon(Icons.call),
       onTap: ()=>{
        showDialog(
          context: context,
          builder: (BuildContext context) {
            // return object of type Dialog
            return AlertDialog(
              title: new Text("Solicitud"),
              content: new Text("¿Desea Aceptar la Solicitud a Contacto $idx?"),
              actions: <Widget>[
                // usually buttons at the bottom of the dialog
                new FlatButton(
                  child: new Text("Sí"),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
                new FlatButton(
                  child: new Text("No"),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ],
            );
          },
        )
      },
     );
   }
  return new Scaffold(
    appBar: new AppBar(
      title: new Text('Solicitudes'),
    ),
    /*
    body: new Container(
      child: new Center(
        child: new Text('Pantalla de Contactos'),
      ),
    ),*/
    body: ListView.builder(
      itemCount: numItems*2,
      padding: const EdgeInsets.all(16.0),
      itemBuilder: (BuildContext context, int i){
        if(i.isOdd) return Divider();
        final index=i~/2+1;
        return _buildRow(index);
      },
    ),
  );
 }
}