import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:proyecto_2eval/views/Login_view.dart';
import 'package:proyecto_2eval/Controllers/LoginController.dart';

class WidgetRegister extends StatefulWidget {
  const WidgetRegister({Key key}) : super(key: key);
  _WidgetRegister createState() => _WidgetRegister();
}

class _WidgetRegister extends State<WidgetRegister> {
  final TextEditingController usernamecontroller = TextEditingController();
  final TextEditingController emailcontroller = TextEditingController();
  final TextEditingController password1controller = TextEditingController();
  final TextEditingController password2controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Container(
        width: 350,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 20),
            TextFormField(
              controller: usernamecontroller,
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
                controller: emailcontroller,
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
                controller: password1controller,
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
                controller: password2controller,
                obscureText: true,
                style: TextStyle(
                  color: Colors.white,
                  decorationColor: Colors.white,
                ),
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
                if (password1controller.text == password2controller.text) {
                  registro(
                    emailcontroller.text,
                    password1controller.text,
                    usernamecontroller.text,
                  ).then((value) {
                    if (value == true) {
                      print(value);
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Login(),
                        ),
                      );
                    }
                  });
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
