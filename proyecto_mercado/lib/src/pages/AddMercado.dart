import 'package:flutter/material.dart';

class AddMercado extends StatefulWidget {
  static String id = 'AddMercado';

  @override
  _AddMercadoState createState() => _AddMercadoState();
}

class _AddMercadoState extends State<AddMercado> {
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
              _TxtTitulo('              Agregar Nuevo Mercado'),
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
              _NMercadoTextField(),
              SizedBox(
                height: 15.0,
              ),
              _DescripcionTextField(),
              SizedBox(
                height: 15.0,
              ),
              _WebTextField(),
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

  Widget _NMercadoTextField() {
    return StreamBuilder(
        builder: (BuildContext context, AsyncSnapshot snapshot) {
      return Container(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: TextField(
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              icon: Icon(Icons.email),
              hintText: 'Nombre del mercado:',
              labelText: 'Nombre del mercado:',
            ),
            onChanged: (value) {}),
      );
    });
  }

  Widget _DescripcionTextField() {
    return StreamBuilder(
        builder: (BuildContext context, AsyncSnapshot snapshot) {
      return Container(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: TextField(
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              icon: Icon(Icons.email),
              hintText: 'Descripcion: ',
              labelText: 'Descripcion: ',
            ),
            onChanged: (value) {}),
      );
    });
  }

  Widget _WebTextField() {
    return StreamBuilder(
        builder: (BuildContext context, AsyncSnapshot snapshot) {
      return Container(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: TextField(
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              icon: Icon(Icons.email),
              hintText: 'Dirección Web: ',
              labelText: 'Dirección Web: ',
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
            child: Text('Guardar Mercado'),
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
