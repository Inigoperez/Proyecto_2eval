import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RouteSelection extends StatefulWidget {
  RouteSelection({Key key}) : super(key: key);

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
          ],
        ),
      ),
    );
  }
}
