import 'dart:convert';

import 'package:proyecto_2eval/models/Rutas.dart';
import 'package:http/http.dart' as http;

Rutas rutaSelect;

Future<Rutas> getRuta(String id) async {
  final String url = 'http://10.10.12.133:8080/rutas/findById?id=' + id;
  /*final String url = 'http://192.168.1.119:8080/rutas/findById?id=' + id;*/

  final response = await http.get('$url');
  print(response.statusCode);
  if (response.statusCode == 200) {
    Map<String, dynamic> ruta = jsonDecode(response.body);
    rutaSelect = Rutas.fromJson(ruta);
    return rutaSelect;
  } else {
    print("Error de conexion con la api, estado:" +
        response.statusCode.toString());
  }
}
