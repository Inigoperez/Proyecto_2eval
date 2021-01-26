import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:proyecto_2eval/models/Rutas.dart';
import 'package:proyecto_2eval/widgets/Map_widget.dart';

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
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Expanded(
                child: Container(
                    height: 50,
                    color: Colors.red,
                    child: FutureBuilder<Rutas>(
                      future: widget.ruta,
                      builder: (context, snapshot) {
                        if (snapshot.hasData) {
                          print(snapshot.data);
                          print(snapshot.data.nombre);
                          return Text(snapshot.data.nombre);
                        } else if (snapshot.hasError) {
                          return Text(snapshot.error);
                        }
                        return CircularProgressIndicator();
                      },
                    )),
              ),
              Expanded(
                child: Container(
                  height: 50,
                  color: Colors.green,
                  child: Text("Ruta del rosco"),
                ),
              ),
              Expanded(
                child: Container(
                  height: 50,
                  color: Colors.grey,
                  child: Text("container3"),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
