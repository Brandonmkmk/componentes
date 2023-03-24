import 'dart:convert';

import 'package:flutter/services.dart' show rootBundle;

class _MenuProvider {
  List<dynamic> opciones = [];
  _MenuProvider() {
    // loadData();
  }
  // loadData() {
  //   rootBundle.loadString('data/menu_opciones.json').then((data) {
  //     Map dataMap = json.decode(data);
  //     opciones = dataMap['rutas'];
  //     // print(dataMap);
  //     // print(dataMap['nombreAPP']);
  //     // print(dataMap['rutas']);
  //   });
  // }
  Future<List<dynamic>> loadData() async {
    final respuesta = await rootBundle.loadString('data/menu_opciones.json');
    Map dataMap = json.decode(respuesta);
    print(dataMap['rutas']);
    opciones = dataMap['rutas'];
    return opciones;
  }
}

final menuProvider = _MenuProvider();
