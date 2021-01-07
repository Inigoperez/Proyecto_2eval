import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WidgetRegister extends StatefulWidget {
  const WidgetRegister({Key key}) : super(key: key);
  _WidgetRegister createState() => _WidgetRegister();
}

class _WidgetRegister extends State<WidgetRegister> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 20),
        TextFormField(
            decoration: InputDecoration(
          labelText: "Usuario:",
          icon: Icon(Icons.account_circle_rounded),
          fillColor: Colors.grey[300],
          border: InputBorder.none,
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
            borderSide: BorderSide(color: Colors.blue),
          ),
          filled: true,
        )),
        SizedBox(height: 20),
        TextFormField(
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              labelText: "Email:",
              icon: Icon(Icons.alternate_email_rounded),
              fillColor: Colors.grey[300],
              border: InputBorder.none,
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(5.0)),
                borderSide: BorderSide(color: Colors.blue),
              ),
              filled: true,
            )),
        SizedBox(height: 20),
        TextFormField(
            obscureText: true,
            decoration: InputDecoration(
              labelText: "Password:",
              icon: Icon(Icons.vpn_key_outlined),
              fillColor: Colors.grey[300],
              border: InputBorder.none,
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(5.0)),
                borderSide: BorderSide(color: Colors.blue),
              ),
              filled: true,
            )),
        SizedBox(height: 20),
        TextFormField(
            obscureText: true,
            decoration: InputDecoration(
              labelText: "Repeat password:",
              icon: Icon(Icons.vpn_key_outlined),
              fillColor: Colors.grey[300],
              border: InputBorder.none,
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(5.0)),
                borderSide: BorderSide(color: Colors.blue),
              ),
              filled: true,
            )),
        RaisedButton(
          color: Colors.blue,
          child: Text("Registrarse"),
          onPressed: () {
            print("Registrarse");
          },
        ),
      ],
    );
  }
}
