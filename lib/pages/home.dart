import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => new _HomeState();
 }
class _HomeState extends State<Home> {
  Drawer _getDrawer(BuildContext context){
    //var header=DrawerHeader(child: new Icon(Icons.hotel));
    final drawerHeader=UserAccountsDrawerHeader(
      accountName: Text('Percy Willans Tomicha Contreras'),
      accountEmail: Text('PercyTomicha@gmail.com'),
      currentAccountPicture: CircleAvatar(
        child: FlutterLogo(size: 60),
        backgroundColor: Colors.white,
      ),
    );
    var info=AboutListTile(
      child: new Text('Información App'),
      applicationVersion: 'v1.0.0',
      applicationName: 'Traductor I_SW 2',
      applicationIcon: new Icon(Icons.translate,color: Colors.blue),
      icon: new Icon(Icons.info),
    );

    ListTile _getItem(Icon icon,String title,String route){
      return new ListTile(
        leading: icon,
        title: new Text(title),
        onTap: () {
          setState(() {
            Navigator.of(context).pushNamed(route);
          });
        },
      );
    }

    ListView listView=new ListView(
      children: <Widget>[
        drawerHeader,
        _getItem(new Icon(Icons.person), 'Inicio', '/'),
        _getItem(new Icon(Icons.flight), 'Propietario', '/propietario'),
        _getItem(new Icon(Icons.flight), 'Modo Turista', '/modo_turista'),
        _getItem(new Icon(Icons.person_add), 'Agregar', '/agregar'),
        _getItem(new Icon(Icons.portrait), 'Solicitudes', '/solicitudes'),
        info
      ],
    );

    return new Drawer(
      child: listView,
    );
  }


  @override
  Widget build(BuildContext context) {
   return new Scaffold(
     backgroundColor: Colors.blueAccent.withOpacity(0.8),
     appBar: new AppBar(
       title: new Text('Ingeniería de Software II', style:TextStyle(fontFamily: 'Gochi Hand'),),
       backgroundColor: Colors.black,
     ),
     drawer: new Drawer(
       child: _getDrawer(context),
     ),
     body: Center(
       child: Column(children: <Widget>[
         Text('',style: TextStyle(fontSize: 10)),
         Text('Facultad de Ingeniería en Ciencias de la',
            style: TextStyle(
              fontSize: 15,fontWeight: FontWeight.bold,fontStyle: FontStyle.italic,
              decoration: TextDecoration.underline,
              decorationColor: Colors.white,
              decorationStyle: TextDecorationStyle.solid
            )
          ),
         Text('Computación y Telecomunicaciones',
            style: TextStyle(
              fontSize: 15,fontWeight: FontWeight.bold,fontStyle: FontStyle.italic,
              decoration: TextDecoration.underline,
              decorationColor: Colors.white,
              decorationStyle: TextDecorationStyle.solid
            )
          ),
         Text('',style: TextStyle(fontSize: 10)),
         //Image.network('https://github.com/PercyTomicha/SW2/blob/gh-pages/img/LogoUAGRM.png',height: 200),
         Image(
           //width: 28.0,
           height: 150.0,
           image: AssetImage('imagenes/APSoft_Logo.png'),
         ),
         /*Text('Le Brindamos Recursos y Soluciones Informáticas',style: TextStyle(fontSize: 10,fontFamily: 'Handlee')),
         Text('Le Brindamos Recursos y Soluciones Informáticas',style: TextStyle(fontSize: 10,fontFamily: 'Gochi Hand')),
         Text('Le Brindamos Recursos y Soluciones Informáticas',style: TextStyle(fontSize: 10,fontFamily: 'Monoton')),*/
         Text('Le Brindamos Recursos y Soluciones Informáticas',style: TextStyle(fontSize: 15,fontFamily: 'Neucha',fontWeight: FontWeight.bold)),
         //Text('Le Brindamos Recursos y Soluciones Informáticas',style: TextStyle(fontSize: 10,fontFamily: 'Prata')),
         Text('PROYECTO FINAL',style: TextStyle(fontSize: 15,fontFamily: 'Monoton',
          decoration: TextDecoration.underline,
          decorationColor: Colors.white,
          decorationStyle: TextDecorationStyle.solid)),
         Text('"SOFTWARE PARA EL DIAGNÓSTICO',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold)),
         Text('SOBRE TOXICIDAD DE ALIMENTOS DE MASCOTAS"',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold)),
         Text('',style: TextStyle(fontSize: 10)),
         Text('MATERIA :',style: TextStyle(fontSize: 20,color: Colors.greenAccent.withOpacity(0.8),fontFamily: 'Monoton')),
         Text('Ingeniería de Software II',style: TextStyle(fontSize: 15)),
         Text('',style: TextStyle(fontSize: 10)),
         Text('DESARROLLADO POR :',style: TextStyle(fontSize: 20,color: Colors.greenAccent.withOpacity(0.8),fontFamily: 'Monoton')),
         Text('Álvaro Zacary Cruz - 208000054',style: TextStyle(fontSize: 15)),
         Text('Percy Willans Tomicha Contreras - 215049721',style: TextStyle(fontSize: 15)),
         Text('',style: TextStyle(fontSize: 10)),
         Text('GESTIÓN :',style: TextStyle(fontSize: 20,color: Colors.greenAccent.withOpacity(0.8),fontFamily: 'Monoton')),
         Text('II-2019',style: TextStyle(fontSize: 15)),
         Text('',style: TextStyle(fontSize: 20)),
         Text('',style: TextStyle(fontSize: 20)),
         Row(
           mainAxisAlignment: MainAxisAlignment.center,
           crossAxisAlignment: CrossAxisAlignment.end,
           children: <Widget>[
              Text('Santa Cruz - Bolivia',style: TextStyle(fontSize: 15)),
           ],
         )
      ],)
     ),
   );
  }
}