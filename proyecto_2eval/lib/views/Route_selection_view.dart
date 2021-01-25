import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:proyecto_2eval/Controllers/PuntosController.dart';
import 'package:proyecto_2eval/controllers/LoginController.dart';
import 'package:proyecto_2eval/models/Users.dart';

import 'Game_view.dart';

class RouteSelection extends StatefulWidget {
  RouteSelection(Future<Users> username, {Key key}) : super(key: key);

  @override
  _RouteSelectionState createState() => _RouteSelectionState();
}

class _RouteSelectionState extends State<RouteSelection> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Route Selection"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Pagina Route Selection"),
            FloatingActionButton(onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Game(
                    getRuta('5fe359722c680a51d5753c8e')
                  ),
                ),
              );
            })
          ],
        ),
      ),
    );
  }
}
