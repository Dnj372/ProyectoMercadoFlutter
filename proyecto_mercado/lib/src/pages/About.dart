import 'package:flutter/material.dart';

class About extends StatefulWidget {
  static String id = 'about ';

  @override
  _About createState() => _About();
}

class _About extends State<About> {
  bool? value = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.blue[100],
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _TxtTitulo(),
              SizedBox(
                height: 20.0,
              ),
              _TxtDescripcion(),
              SizedBox(
                height: 20.0,
              ),
              _TxtDerechos(),
              SizedBox(
                height: 20.0,
              ),
              _buttonHome(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buttonHome() {
    return StreamBuilder(
        builder: (BuildContext context, AsyncSnapshot snapshot) {
      return RaisedButton(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 90.0, vertical: 15.0),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text('HOME'),
                  Icon(Icons.home),
                ]),
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          elevation: 10.0,
          color: Colors.lightBlue,
          onPressed: () {
            Navigator.of(context).pop();
          });
    });
  }

  Widget _TxtTitulo() {
    return StreamBuilder(
        builder: (BuildContext context, AsyncSnapshot snapshot) {
      return Text(
        'NUESTRA APP',
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.bold,
        ),
      );
    });
  }

  Widget _TxtDescripcion() {
    return StreamBuilder(
        builder: (BuildContext context, AsyncSnapshot snapshot) {
      return Text(
        'Somos la nueva y mejorada alternativa en bsqueda de mercados. ' +
            'Nuestra implementacion esta basada en  desarrollar de geolocalizacion para la busqueda imediata.',
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.bold,
        ),
      );
    });
  }

  Widget _TxtDerechos() {
    return StreamBuilder(
        builder: (BuildContext context, AsyncSnapshot snapshot) {
      return Text(
        'Derechos reservados 2021',
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.bold,
        ),
      );
    });
  }
}
