import 'package:http/http.dart' as http;
import 'package:proyecto_2eval/views/Route_selection_view.dart';

///////-- Iniciio función inicio de sesión --/////////

login(String email, String password) async {
  final String url = 'http://10.10.12.133:8080/usuario/login?email=' +
      email +
      '&password=' +
      password;

  final response = await http.get('$url');
  print(response.statusCode);
  if (response.statusCode == 200) {
    print(response.body);
    if (response.body == 'true') {
      RouteSelection();
    } else {
      print("No esta registrado");
    }
  } else {
    print("Error de conexion con la api" + response.statusCode.toString());
  }
}
///////-- Cierre función inicio de sesión --//////////

//////////////////////////////////////////////////////
////////-- Inicio función de registro --//////////////
//////////////////////////////////////////////////////

//////////////////////////////////////////////////////
////////-- Cierre función registro --/////////////////
//////////////////////////////////////////////////////
