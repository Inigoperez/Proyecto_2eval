import 'package:http/http.dart' as http;
import 'package:proyecto_2eval/models/Rutas.dart';

////////////-- Se abre la recogida de rutas --////////////////
Future<List<Rutas>> getRoutes() async {
  final String url = 'http://10.10.12.133:8080/rutas/';

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
////////////-- Cierre de recogida de rutas --////////////////
