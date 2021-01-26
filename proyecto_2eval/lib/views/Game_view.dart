import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:proyecto_2eval/models/Rutas.dart';
import 'package:proyecto_2eval/widgets/Map_widget.dart';
import 'package:percent_indicator/percent_indicator.dart';

// ignore: must_be_immutable
class Game extends StatefulWidget {
  Game({Key key, Future<Rutas> ruta}) : super(key: key);
  Future<Rutas> ruta;

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
      body: Stack(
        children: <Widget>[
          Mapa(),
          Column(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Expanded(
                  child: Container(
                    height: 50,
                    color: Colors.red,
                    child: Center(child: Text("asdkfksj")),
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 50,
                    color: Colors.green,
                    child: Center(child: Text("Ruta del rosco")),
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 50,
                    color: Colors.grey,
                    child: Center(child: Text("container3")),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.all(15.0),
                  child: new LinearPercentIndicator(
                    width: MediaQuery.of(context).size.width - 50,
                    animation: true,
                    lineHeight: 20.0,
                    animationDuration: 2000,
                    percent: 0.0,
                    center: Text("Completado - 00.0%"),
                    linearStrokeCap: LinearStrokeCap.roundAll,
                    progressColor: Colors.greenAccent,
                  ),
                ),
              ],
            )
          ])
        ],
      ),
    );
  }
}
