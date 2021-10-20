import 'package:flutter/material.dart';

class MercadosFav extends StatefulWidget {
  static String id = 'MercadosFav';

  @override
  _MercadosFav createState() => _MercadosFav();
}

class _MercadosFav extends State<MercadosFav> {
  @override
  Widget build(BuildContext context) {
    //variable contador para saber el indice real en el for para los items
    //int ii = 0;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.blue[100],
        body: Center(
          child: ListView(
            //mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              _TxtBienvenida(),
              SizedBox(height: 15.0),
              //Tabla que contendrá los items
              Table(
                  //border: TableBorder.all(color: Colors.black),
                  columnWidths: {
                    0: FixedColumnWidth(100.0),
                  }, children: [
                //Cada TableRow es una fila para la tabla
                TableRow(children: [
                  SizedBox(height: 15.0),
                ]),
                //For para simular items solo usando 1 solo metodo
                for (var i = 0; i < 7; i++)
                  TableRow(children: [
                    _buttonItem(i),
                  ]),
              ]),
              SizedBox(height: 15.0),
              _buttonLogout(),
              SizedBox(height: 15.0),
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
        'Lista de mercados Favoritos.',
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      );
    });
  }

  Widget _buttonItem(var i) {
    String ii = i.toString();
    int color = 0;
    if (i % 2 == 0) {
      color = 200;
    } else {
      color = 300;
    }
    return StreamBuilder(
        builder: (BuildContext context, AsyncSnapshot snapshot) {
      return RaisedButton(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 90.0, vertical: 15.0),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text('ItemMercado: ' + ii),
                  Image(
                    image: AssetImage('assets/logo.png'),
                    width: 35,
                  ),
                  //Icon(Icons.logout),
                ]),
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          elevation: 10.0,
          color: Colors.blue[color],
          onPressed: () {
            // Navigator.of(context).pop();
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
                  Text('Regresar'),
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
