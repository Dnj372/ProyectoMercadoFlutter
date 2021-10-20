import 'package:flutter/material.dart';
import 'package:proyecto_mercado/src/pages/RegistroUsuario.dart';
import 'package:proyecto_mercado/src/pages/bienvenida.dart';

class LoginPage extends StatefulWidget {
  static String id = 'login_page';

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.blue[100],
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Flexible(
                child: Image(
                  height: 200,
                  image: AssetImage('assets/logo.png'),
                ),
              ),
              SizedBox(
                height: 15.0,
              ),
              _TxtTitulo(),
              SizedBox(
                height: 15.0,
              ),
              _TxtCuenta(),
              SizedBox(
                height: 15.0,
              ),
              _userTextField(),
              SizedBox(
                height: 15.0,
              ),
              _passwordTextField(),
              SizedBox(
                height: 20.0,
              ),
              _buttonLogin(),
              SizedBox(
                height: 20.0,
              ),
              _buttonRegistrar(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _userTextField() {
    return StreamBuilder(
        builder: (BuildContext context, AsyncSnapshot snapshot) {
      return Container(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: TextField(
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              icon: Icon(Icons.email),
              hintText: 'Ingrese su correo',
              labelText: 'Correo de ingreso',
            ),
            onChanged: (value) {}),
      );
    });
  }

  Widget _passwordTextField() {
    return StreamBuilder(
        builder: (BuildContext context, AsyncSnapshot snapshot) {
      return Container(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: TextField(
            keyboardType: TextInputType.text,
            obscureText: true,
            decoration: InputDecoration(
              icon: Icon(Icons.password),
              hintText: 'Ingrese su Contraseña',
              labelText: 'Contraseña',
            ),
            onChanged: (value) {}),
      );
    });
  }

  Widget _buttonLogin() {
    return StreamBuilder(
        builder: (BuildContext context, AsyncSnapshot snapshot) {
      return RaisedButton(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 80.0, vertical: 15.0),
            child: Text('Iniciar Sesion'),
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          elevation: 10.0,
          color: Colors.blueAccent,
          onPressed: () {
            Navigator.of(context).pushNamed(Bienvenida.id);
          });
    });
  }

  Widget _buttonRegistrar() {
    return StreamBuilder(
        builder: (BuildContext context, AsyncSnapshot snapshot) {
      return RaisedButton(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 80.0, vertical: 5.0),
            child: Text('Registrarse'),
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          elevation: 10.0,
          color: Colors.blueGrey[400],
          onPressed: () {
            Navigator.of(context).pushNamed(RegUsr.id);
          });
    });
  }

  Widget _TxtTitulo() {
    return StreamBuilder(
        builder: (BuildContext context, AsyncSnapshot snapshot) {
      return Text(
        'ENCUENTRA TU MERCADO FÁCIL',
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      );
    });
  }

  Widget _TxtCuenta() {
    return StreamBuilder(
        builder: (BuildContext context, AsyncSnapshot snapshot) {
      return Text(
        'Tu cuenta: ',
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      );
    });
  }
}
