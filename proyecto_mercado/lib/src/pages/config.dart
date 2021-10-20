import 'package:flutter/material.dart';

class Config extends StatefulWidget {
  static String id = 'config';

  @override
  _Config createState() => _Config();
}

class _Config extends State<Config> {
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
                height: 10.0,
              ),
              _ChkMostrarFoto(),
              SizedBox(
                height: 10.0,
              ),
              _buttonCambiarFoto(),
              SizedBox(
                height: 10.0,
              ),
              _NombreTextField(),
              SizedBox(
                height: 10.0,
              ),
              _buttonGuardar(),
              SizedBox(
                height: 10.0,
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
        'Puede realizar las combinaciones de configuración que usted desee.',
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.bold,
        ),
      );
    });
  }

  Widget _ChkMostrarFoto() => ListTile(
        leading: Checkbox(
          value: value,
          onChanged: (value) {
            setState(() {
              this.value = value;
            });
          },
        ),
        title: Text(
          "Mostrar Foto",
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
        ),
      );

  Widget _buttonCambiarFoto() {
    return StreamBuilder(
        builder: (BuildContext context, AsyncSnapshot snapshot) {
      return RaisedButton(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 90.0, vertical: 15.0),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text('CAMBIAR FOTO DE PERFIL'),
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

  Widget _NombreTextField() {
    return StreamBuilder(
        builder: (BuildContext context, AsyncSnapshot snapshot) {
      return Container(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: TextField(
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              icon: Icon(Icons.email),
              hintText: 'Ingrese su nuevo nombre',
              labelText: 'Nombre',
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
            padding: EdgeInsets.symmetric(horizontal: 90.0, vertical: 15.0),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text('GUARDAR'),
                  Icon(Icons.save),
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
