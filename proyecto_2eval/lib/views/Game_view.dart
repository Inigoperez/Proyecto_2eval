import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:proyecto_2eval/models/Rutas.dart';
import 'package:proyecto_2eval/widgets/Map_widget.dart';

class Game extends StatefulWidget {
  Game(Future<Rutas> ruta, {Key key}) : super(key: key);
  @override
  _GameState createState() => _GameState();
}

class _GameState extends State<Game> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        /*appBar: AppBar(
          title: Text("Game"),
        ),*/
        body: Mapa());
  }
}
