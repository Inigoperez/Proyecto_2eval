import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:proyecto_2eval/models/Users.dart';

Users userLogeado;

///////-- Iniciio función inicio de sesión --/////////
Future<bool> login(String email, String password) async {
  bool acces = false;
  /*final String url = 'http://10.10.12.133:8080/usuario/login?email=' +
      email +
      '&password=' +
      password;*/
  final String url = 'http://192.168.1.119:8080/usuario/login?email=' +
  email +
  '&password=' +
  password;

  final response = await http.get('$url');
  print(response.statusCode);
  if (response.statusCode == 200) {
    if (response.body == 'true') {
      acces = true;
    } else {
      print("No esta registrado");
      acces = false;
    }
  } else {
    print("Error de conexion con la api, estado:" +
        response.statusCode.toString());
    acces = false;
  }
  return acces;
}
///////-- Cierre función inicio de sesión --//////////
//////////////////////////////////////////////////////

////////-- Inicio función de registro --//////////////
Future<bool> registro(String email, String password, String username) async {
  bool regis = false;
  final String url = 'http://10.10.12.133:8080/usuario/añadir?username=' +
      username +
      '&email=' +
      email +
      '&password=' +
      password;

  final response = await http.post('$url');
  print(response.statusCode);
  if (response.statusCode == 200) {
    if (response.body == 'true') {
      regis = true;
    } else {
      print("Error al crear el usuario");
      regis = false;
    }
  } else {
    print("Error de conexion con la api, estado:" +
        response.statusCode.toString());
    regis = false;
  }
  return regis;
}
////////-- Cierre función registro --/////////////////
//////////////////////////////////////////////////////

//////////////-- Get Username --////////////////////
Future<String> getUsername(String email) async {
  final String url =
      'http://10.10.12.133:8080/usuario/GetUsername?email=' + email;
  final response = await http.get('$url');
  if (response.statusCode == 200) {
    return response.body;
  } else {
    return "error" + response.statusCode.toString();
  }
}

//////////////-- Get User --//////////////7//////
Future<Users> getUser(String email) async {
  final String url = 'http://10.10.12.133:8080/usuario/GetUser?email=' + email;
  final response = await http.get('$url');
  if (response.statusCode == 200) {
    Map<String, dynamic> user = jsonDecode(response.body);
    userLogeado = Users.fromJson(user);
    return userLogeado;
  } else {
    return userLogeado;
  }
}
