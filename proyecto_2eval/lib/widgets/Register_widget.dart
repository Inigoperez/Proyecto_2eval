import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WidgetRegister extends StatefulWidget {
  const WidgetRegister({Key key}) : super(key: key);
  _WidgetRegister createState() => _WidgetRegister();
}

class _WidgetRegister extends State<WidgetRegister> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Container(
        width: 350,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 20),
            TextFormField(
              style: TextStyle(
                color: Colors.white,
                decorationColor: Colors.white,
              ),
              decoration: InputDecoration(
                labelText: "Usuario:",
                labelStyle: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 19,
                  fontStyle: FontStyle.italic,
                ),
                icon: Icon(Icons.account_circle_rounded),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.black,
                  ),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                fillColor: Colors.grey[850].withOpacity(0.7),
                filled: true,
                hintStyle: TextStyle(color: Colors.white),
              ),
            ),
            SizedBox(height: 20),
            TextFormField(
                style: TextStyle(
                  color: Colors.white,
                  decorationColor: Colors.white,
                ),
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  labelText: "Email:",
                  labelStyle: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 19,
                    fontStyle: FontStyle.italic,
                  ),
                  icon: Icon(Icons.alternate_email_rounded),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.black,
                    ),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  fillColor: Colors.grey[850].withOpacity(0.7),
                  filled: true,
                  hintStyle: TextStyle(color: Colors.white),
                )),
            SizedBox(height: 20),
            TextFormField(
                style: TextStyle(
                  color: Colors.white,
                  decorationColor: Colors.white,
                ),
                obscureText: true,
                decoration: InputDecoration(
                  labelText: "Password:",
                  labelStyle: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 19,
                    fontStyle: FontStyle.italic,
                  ),
                  icon: Icon(Icons.vpn_key_outlined),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.black,
                    ),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  fillColor: Colors.grey[850].withOpacity(0.7),
                  filled: true,
                  hintStyle: TextStyle(color: Colors.white),
                )),
            SizedBox(height: 20),
            TextFormField(
                style: TextStyle(
                  color: Colors.white,
                  decorationColor: Colors.white,
                ),
                obscureText: true,
                decoration: InputDecoration(
                  labelText: "Repeat password:",
                  labelStyle: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 19,
                    fontStyle: FontStyle.italic,
                  ),
                  icon: Icon(Icons.vpn_key_outlined),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.black,
                    ),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  fillColor: Colors.grey[850].withOpacity(0.7),
                  filled: true,
                )),
            SizedBox(height: 20),
            RaisedButton(
              color: Colors.blue,
              child: Text("Registrarse"),
              onPressed: () {
                print("Registrarse");
              },
            ),
          ],
        ),
      ),
    );
  }
}
