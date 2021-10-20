import 'package:flutter/material.dart';
import 'package:proyecto_mercado/src/pages/AddLista.dart';
import 'package:proyecto_mercado/src/pages/AddProdLista.dart';

class ListaCompra extends StatefulWidget {
  static String id = 'ListaCompra';

  @override
  _ListaCompra createState() => _ListaCompra();
}

class _ListaCompra extends State<ListaCompra> {
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
              _buttonAddList(),
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
        'Mi Lista de Compra.',
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
            padding: EdgeInsets.symmetric(horizontal: 80.0, vertical: 15.0),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text('ItemProducto: ' + ii),
                  Icon(Icons.logout),
                ]),
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          elevation: 10.0,
          color: Colors.amber[color],
          onPressed: () {
            // Navigator.of(context).pop();
          });
    });
  }

  Widget _buttonAddList() {
    return StreamBuilder(
        builder: (BuildContext context, AsyncSnapshot snapshot) {
      return RaisedButton(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 60.0, vertical: 15.0),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text('Agregar producto a la lista'),
                  Icon(Icons.logout),
                ]),
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          elevation: 10.0,
          color: Colors.green[400],
          onPressed: () {
            Navigator.of(context).pushNamed(AddProdLista.id);
          });
    });
  }

  Widget _buttonLogout() {
    return StreamBuilder(
        builder: (BuildContext context, AsyncSnapshot snapshot) {
      return RaisedButton(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 100.0, vertical: 15.0),
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
  /*int _contador(int i) {
    i = i + 1;
    return i;
  }*/
}
