import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WidgetLogin extends StatefulWidget {
  const WidgetLogin({Key key}) : super(key: key);
  _WidgetLogin createState() => _WidgetLogin();
}

class _WidgetLogin extends State<WidgetLogin> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          TextFormField(),
          TextFormField(),
          RaisedButton(),
          RaisedButton(),
        ],
      ),
    );
  }
}
