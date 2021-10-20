import 'package:flutter/material.dart';

class AddProdLista extends StatefulWidget {
  static String id = 'AddProdLista';

  @override
  _AddProdListaState createState() => _AddProdListaState();
}

class _AddProdListaState extends State<AddProdLista> {
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
              _TxtTitulo('       Agregar nuevo producto a mi lista'),
              SizedBox(
                height: 15.0,
              ),
              Flexible(
                child: Image(
                  height: 200,
                  image: AssetImage('assets/logo.png'),
                ),
              ),
              SizedBox(
                height: 15.0,
              ),
              _TxtTitulo('              Datos:'),
              SizedBox(
                height: 15.0,
              ),
              _NProdTextField(),
              SizedBox(
                height: 15.0,
              ),
              _MarcaTextField(),
              SizedBox(
                height: 15.0,
              ),
              _CantidadTextField(),
              SizedBox(
                height: 20.0,
              ),
              _PrecioTextField(),
              SizedBox(
                height: 20.0,
              ),
              _buttonGuardar(),
              SizedBox(
                height: 20.0,
              ),
              _buttonCancelar(),
              SizedBox(
                height: 20.0,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _NProdTextField() {
    return StreamBuilder(
        builder: (BuildContext context, AsyncSnapshot snapshot) {
      return Container(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: TextField(
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              icon: Icon(Icons.add_shopping_cart),
              hintText: 'Nombre del Producto:',
              labelText: 'Nombre del Producto:',
            ),
            onChanged: (value) {}),
      );
    });
  }

  Widget _MarcaTextField() {
    return StreamBuilder(
        builder: (BuildContext context, AsyncSnapshot snapshot) {
      return Container(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: TextField(
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              icon: Icon(Icons.add_moderator_outlined),
              hintText: 'Marca:',
              labelText: 'Marca:',
            ),
            onChanged: (value) {}),
      );
    });
  }

  Widget _CantidadTextField() {
    return StreamBuilder(
        builder: (BuildContext context, AsyncSnapshot snapshot) {
      return Container(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: TextField(
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              icon: Icon(Icons.pin),
              hintText: 'Cantidad: ',
              labelText: 'Cantidad: ',
            ),
            onChanged: (value) {}),
      );
    });
  }

  Widget _PrecioTextField() {
    return StreamBuilder(
        builder: (BuildContext context, AsyncSnapshot snapshot) {
      return Container(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: TextField(
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              icon: Icon(Icons.paid_outlined),
              hintText: 'Precio por unidad: ',
              labelText: 'Precio por unidad: ',
            ),
            onChanged: (value) {}),
      );
    });
  }

  Widget _buttonGuardar() {
    return StreamBuilder(
        builder: (BuildContext context, AsyncSnapshot snapshot) {
      return RaisedButton(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 80.0, vertical: 15.0),
            child: Text('Agregar producto a la lista'),
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          elevation: 10.0,
          color: Colors.green,
          onPressed: () {
            Navigator.of(context).pop();
          });
    });
  }

  Widget _buttonCancelar() {
    return StreamBuilder(
        builder: (BuildContext context, AsyncSnapshot snapshot) {
      return RaisedButton(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 80.0, vertical: 15.0),
            child: Text('Cancelar'),
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

  Widget _TxtTitulo(String txt) {
    return StreamBuilder(
        builder: (BuildContext context, AsyncSnapshot snapshot) {
      return Text(
        txt,
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      );
    });
  }
}
