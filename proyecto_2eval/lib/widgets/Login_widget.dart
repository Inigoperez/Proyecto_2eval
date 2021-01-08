import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WidgetLogin extends StatefulWidget {
  const WidgetLogin({Key key}) : super(key: key);
  _WidgetLogin createState() => _WidgetLogin();
}

class _WidgetLogin extends State<WidgetLogin> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    // Build a Form widget using the _formKey created above.
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          SizedBox(height: 10),
          Container(
            width: 350,
            child: Column(
              children: [
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  style: TextStyle(
                    color: Colors.white,
                    decorationColor: Colors.white,
                  ),
                  decoration: InputDecoration(
                    labelText: "Email:",
                    labelStyle: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 19,
                      fontStyle: FontStyle.italic,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.black,
                      ),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    fillColor: Colors.grey[850].withOpacity(0.7),
                    filled: true,
                    hintText: 'platano@gmail.com',
                    hintStyle: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Please enter some text';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 10),
                TextFormField(
                  obscureText: true,
                  style: TextStyle(
                    color: Colors.white,
                    decorationColor: Colors.white,
                  ),
                  decoration: InputDecoration(
                    labelText: "Password:",
                    labelStyle: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 19,
                      fontStyle: FontStyle.italic,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.black,
                      ),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    fillColor: Colors.grey[850].withOpacity(0.7),
                    filled: true,
                  ),
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Please enter some text';
                    }
                    return null;
                  },
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState.validate()) {
                      Scaffold.of(context).showSnackBar(
                          SnackBar(content: Text('Processing Data')));
                    }
                  },
                  child: Text('Iniciar Sesión'),
                ),
                SizedBox(width: 20),
                ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState.validate()) {
                      Scaffold.of(context).showSnackBar(
                          SnackBar(content: Text('Processing Data')));
                    }
                  },
                  child: Text('No tengo cuenta'),
                ),
              ],
            ),
          ),
          Text("Recuperar contraseña")
        ],
      ),
    );
  }
}
