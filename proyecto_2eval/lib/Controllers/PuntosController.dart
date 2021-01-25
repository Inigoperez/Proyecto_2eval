import 'package:proyecto_2eval/models/Rutas.dart';
import 'package:http/http.dart' as http;

Future<Rutas> getRuta(String id) async {

  /*final String url = 'http://10.10.12.133:8080/usuario/login?email=' +
      email +
      '&password=' +
      password;*/
  final String url = 'http://192.168.1.119:8080/rutas/ruta?id='+id;

  final response = await http.get('$url');
  print(response.statusCode);
  if (response.statusCode == 200) {
    print(response.body);
  } else {
    print("Error de conexion con la api, estado:" +
        response.statusCode.toString());
  }
}