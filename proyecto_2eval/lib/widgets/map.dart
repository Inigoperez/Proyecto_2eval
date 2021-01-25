import 'dart:async';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:flutter/services.dart';

class Mapa extends StatefulWidget {
  Mapa({Key key}) : super(key: key);

  @override
  _Mapa createState() => _Mapa();
}

class _Mapa extends State<Mapa> {
  Position _currentPosition;

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
    ));
    Completer<GoogleMapController> _controller = Completer();
    void _onMapCreated(GoogleMapController controller) {
      _controller.complete(controller);
    }

    return Stack(
      children: <Widget>[
        GoogleMap(
          onMapCreated: _onMapCreated,
          initialCameraPosition: CameraPosition(
            target: LatLng(43.4219999, -1.0862462),
            zoom: 15,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Expanded(
              child: Container(
                height: 50,
                color: Colors.red,
                child: Text("Tiempo"),
              ),
            ),
            Expanded(
              child: Container(
                height: 50,
                color: Colors.green,
                child: Text("Ruta del rosco"),
              ),
            ),
            Expanded(
              child: Container(
                height: 50,
                color: Colors.grey,
                child: Text("container3"),
              ),
            ),
          ],
        ),
      ],
    );
  }

  _getCurrentLocation() {
    final Geolocator geolocator = Geolocator()..forceAndroidLocationManager;

    geolocator
        .getCurrentPosition(desiredAccuracy: LocationAccuracy.best)
        .then((Position position) {
      setState(() {
        _currentPosition = position;
      });
    }).catchError((e) {
      print(e);
    });
    print(_currentPosition);
  }
}
