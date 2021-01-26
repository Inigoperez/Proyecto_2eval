import 'dart:ffi';

import 'Localizaciones.dart';

class Rutas {
  String id;
  String ciudad;
  String duracion;
  Double puntos;
  String nombre;
  List<dynamic> lista_puntos;

  Rutas(
      {this.id,
      this.ciudad,
      this.duracion,
      this.nombre,
      this.puntos,
      this.lista_puntos});

  factory Rutas.fromJson(Map<String, dynamic> parsedJson) {
    return new Rutas(
        id: parsedJson['id'] as String,
        ciudad: parsedJson['ciudad'] as String,
        nombre: parsedJson['nombre'] as String,
        duracion: parsedJson['duracion'] as String,
        puntos: parsedJson['puntos'] as Double,
        lista_puntos: parsedJson['lista_puntos'] as List<dynamic>);
  }
}
