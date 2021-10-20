import 'package:flutter/material.dart';

class RegUsr extends StatefulWidget {
  static String id = 'RegUsr';

  @override
  _RegUsrState createState() => _RegUsrState();
}

class _RegUsrState extends State<RegUsr> {
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
              _TxtTitulo('       Registrarse como nuevo usuario'),
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
              _TxtTitulo('       Ingresar Datos:'),
              SizedBox(
                height: 15.0,
              ),
              _NUsuarioTextField(),
              SizedBox(
                height: 15.0,
              ),
              _PassTextField(),
              SizedBox(
                height: 15.0,
              ),
              _NombreTextField(),
              SizedBox(
                height: 20.0,
              ),
              _MailTextField(),
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

  Widget _NUsuarioTextField() {
    return StreamBuilder(
        builder: (BuildContext context, AsyncSnapshot snapshot) {
      return Container(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: TextField(
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              icon: Icon(Icons.add_shopping_cart),
              hintText: 'Usuario:',
              labelText: 'Usuario:',
            ),
            onChanged: (value) {}),
      );
    });
  }

  Widget _PassTextField() {
    return StreamBuilder(
        builder: (BuildContext context, AsyncSnapshot snapshot) {
      return Container(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: TextField(
            keyboardType: TextInputType.text,
            obscureText: true,
            decoration: InputDecoration(
              icon: Icon(Icons.add_moderator_outlined),
              hintText: 'Contraseña:',
              labelText: 'Contraseña:',
            ),
            onChanged: (value) {}),
      );
    });
  }

  Widget _NombreTextField() {
    return StreamBuilder(
        builder: (BuildContext context, AsyncSnapshot snapshot) {
      return Container(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: TextField(
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              icon: Icon(Icons.pin),
              hintText: 'Nombre completo: ',
              labelText: 'Nombre completo: ',
            ),
            onChanged: (value) {}),
      );
    });
  }

  Widget _MailTextField() {
    return StreamBuilder(
        builder: (BuildContext context, AsyncSnapshot snapshot) {
      return Container(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: TextField(
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              icon: Icon(Icons.paid_outlined),
              hintText: 'Correo electrónico: ',
              labelText: 'Correo electrónico: ',
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
            child: Text('Registrarse'),
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
