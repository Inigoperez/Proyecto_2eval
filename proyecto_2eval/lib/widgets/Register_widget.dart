import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WidgetRegister extends StatefulWidget {
  const WidgetRegister({Key key}) : super(key: key);
  _WidgetRegister createState() => _WidgetRegister();
}

class _WidgetRegister extends State<WidgetRegister> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          TextFormField(),
          TextFormField(),
          TextFormField(),
          TextFormField(),
          RaisedButton(
            color: Colors.blue,
            child: Text("Registrarse"),
            onPressed: () {
              print("Registrarse");
            },
          ),
        ],
      ),
    );
  }
}
