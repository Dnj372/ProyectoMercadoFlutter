import 'package:flutter/material.dart';

class AddLista extends StatefulWidget {
  static String id = 'AddLista';

  @override
  _AddListaState createState() => _AddListaState();
}

class _AddListaState extends State<AddLista> {
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
              _TxtTitulo('       Agregar Nueva lista de Compra'),
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
              _NListaTextField(),
              SizedBox(
                height: 15.0,
              ),
              _DescripcionTextField(),
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

  Widget _NListaTextField() {
    return StreamBuilder(
        builder: (BuildContext context, AsyncSnapshot snapshot) {
      return Container(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: TextField(
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              icon: Icon(Icons.email),
              hintText: 'Nombre de la lista:',
              labelText: 'Nombre de la lista:',
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

  Widget _buttonGuardar() {
    return StreamBuilder(
        builder: (BuildContext context, AsyncSnapshot snapshot) {
      return RaisedButton(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 80.0, vertical: 15.0),
            child: Text('Guardar lista'),
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
