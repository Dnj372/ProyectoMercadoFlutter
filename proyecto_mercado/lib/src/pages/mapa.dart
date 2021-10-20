import 'package:flutter/material.dart';

class Mapa extends StatefulWidget {
  static String id = 'mapa';

  @override
  _Mapa createState() => _Mapa();
}

class _Mapa extends State<Mapa> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.blue[100],
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Flexible(
                child: Image(
                  height: 300,
                  image: AssetImage('assets/mapa.png'),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              _buttonSupermercado(),
              SizedBox(
                height: 15.0,
              ),
              _TxtSuper(),
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

  Widget _buttonSupermercado() {
    return StreamBuilder(
        builder: (BuildContext context, AsyncSnapshot snapshot) {
      return RaisedButton(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 90.0, vertical: 15.0),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text('Supermercado'),
                  Icon(Icons.search),
                ]),
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          elevation: 10.0,
          color: Colors.grey,
          onPressed: () {
            Navigator.of(context).pop();
          });
    });
  }

  Widget _TxtSuper() {
    return StreamBuilder(
        builder: (BuildContext context, AsyncSnapshot snapshot) {
      return Text(
        'Al hacer click realizará una busqueda de los mercados más cercanos a tu alrededor.',
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.bold,
        ),
      );
    });
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
}
