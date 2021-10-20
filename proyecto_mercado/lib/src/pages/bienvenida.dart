import 'package:flutter/material.dart';
import 'package:proyecto_mercado/src/pages/About.dart';
import 'package:proyecto_mercado/src/pages/config.dart';

import 'mapa.dart';
import 'Mercados.dart';
import 'Compras.dart';

class Bienvenida extends StatefulWidget {
  static String id = 'bienvenida';

  @override
  _Bienvenida createState() => _Bienvenida();
}

class _Bienvenida extends State<Bienvenida> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.blue[100],
        body: Center(
          child: ListView(
            //mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 15.0,
              ),
              _TxtBienvenida(),
              Flexible(
                child: Image(
                  height: 100,
                  image: AssetImage('assets/user.png'),
                ),
              ),
              SizedBox(
                height: 15.0,
              ),
              _TxtNombre(),
              SizedBox(
                height: 20.0,
              ),
              _buttonMapa(),
              SizedBox(
                height: 20.0,
              ),
              _buttonMercado(),
              SizedBox(
                height: 20.0,
              ),
              _buttonCompra(),
              SizedBox(
                height: 20.0,
              ),
              _buttonConfig(),
              SizedBox(
                height: 20.0,
              ),
              _buttonAbout(),
              SizedBox(
                height: 20.0,
              ),
              _buttonLogout(),
              SizedBox(
                height: 20.0,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _TxtBienvenida() {
    return StreamBuilder(
        builder: (BuildContext context, AsyncSnapshot snapshot) {
      return Text(
        '      BIENVENIDO',
        style: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,
        ),
      );
    });
  }

  Widget _TxtNombre() {
    return StreamBuilder(
        builder: (BuildContext context, AsyncSnapshot snapshot) {
      return Text(
        '      Juan Pedro Alvarado',
        style: TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.bold,
        ),
      );
    });
  }

  Widget _buttonMapa() {
    return StreamBuilder(
        builder: (BuildContext context, AsyncSnapshot snapshot) {
      return RaisedButton(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 90.0, vertical: 15.0),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text('Mapa'),
                  Icon(Icons.place_rounded),
                ]),
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          elevation: 10.0,
          color: Colors.green,
          onPressed: () {
            Navigator.of(context).pushNamed(Mapa.id);
          });
    });
  }

  Widget _buttonMercado() {
    return StreamBuilder(
        builder: (BuildContext context, AsyncSnapshot snapshot) {
      return RaisedButton(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 90.0, vertical: 15.0),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text('Lista de Mercados'),
                  Icon(Icons.food_bank_outlined),
                ]),
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          elevation: 10.0,
          color: Colors.purple[300],
          onPressed: () {
            Navigator.of(context).pushNamed(Mercados.id);
          });
    });
  }

  Widget _buttonCompra() {
    return StreamBuilder(
        builder: (BuildContext context, AsyncSnapshot snapshot) {
      return RaisedButton(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 90.0, vertical: 15.0),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text('Lista de Compras'),
                  Icon(Icons.free_breakfast_outlined),
                ]),
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          elevation: 10.0,
          color: Colors.purple[300],
          onPressed: () {
            Navigator.of(context).pushNamed(Compras.id);
          });
    });
  }

  Widget _buttonConfig() {
    return StreamBuilder(
        builder: (BuildContext context, AsyncSnapshot snapshot) {
      return RaisedButton(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 90.0, vertical: 15.0),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text('Configuración'),
                  Icon(Icons.settings),
                ]),
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          elevation: 10.0,
          color: Colors.amber[200],
          onPressed: () {
            Navigator.of(context).pushNamed(Config.id);
          });
    });
  }

  Widget _buttonAbout() {
    return StreamBuilder(
        builder: (BuildContext context, AsyncSnapshot snapshot) {
      return RaisedButton(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 90.0, vertical: 15.0),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text('Acerca de'),
                  Icon(Icons.add),
                ]),
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          elevation: 10.0,
          color: Colors.blue[200],
          onPressed: () {
            Navigator.of(context).pushNamed(About.id);
          });
    });
  }

  Widget _buttonLogout() {
    return StreamBuilder(
        builder: (BuildContext context, AsyncSnapshot snapshot) {
      return RaisedButton(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 90.0, vertical: 15.0),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text('Salir de la cuenta'),
                  Icon(Icons.logout),
                ]),
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          elevation: 10.0,
          color: Colors.red[400],
          onPressed: () {
            Navigator.of(context).pop();
          });
    });
  }
}
