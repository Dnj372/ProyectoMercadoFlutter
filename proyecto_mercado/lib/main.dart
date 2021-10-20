import 'package:flutter/material.dart';
import 'package:proyecto_mercado/src/pages/About.dart';
import 'package:proyecto_mercado/src/pages/AddLista.dart';
import 'package:proyecto_mercado/src/pages/AddMercado.dart';
import 'package:proyecto_mercado/src/pages/AddProdLista.dart';
import 'package:proyecto_mercado/src/pages/Compras.dart';
import 'package:proyecto_mercado/src/pages/ListaCompra.dart';
import 'package:proyecto_mercado/src/pages/Mercados.dart';
import 'package:proyecto_mercado/src/pages/MercadosFav.dart';
import 'package:proyecto_mercado/src/pages/bienvenida.dart';
import 'package:proyecto_mercado/src/pages/mapa.dart';
import 'package:proyecto_mercado/src/pages/config.dart';
import 'package:proyecto_mercado/src/pages/login_page.dart';
import 'package:proyecto_mercado/src/pages/RegistroUsuario.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MercadoApp',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: LoginPage.id,
      routes: {
        LoginPage.id: (context) => LoginPage(),
        RegUsr.id: (context) => RegUsr(),
        Bienvenida.id: (context) => Bienvenida(),
        Mapa.id: (context) => Mapa(),
        Mercados.id: (context) => Mercados(),
        Compras.id: (context) => Compras(),
        Config.id: (context) => Config(),
        About.id: (context) => About(),
        MercadosFav.id: (context) => MercadosFav(),
        AddMercado.id: (context) => AddMercado(),
        AddLista.id: (context) => AddLista(),
        ListaCompra.id: (context) => ListaCompra(),
        AddProdLista.id: (context) => AddProdLista(),
      },
    );
  }
}
