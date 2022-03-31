import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:han_rou_hazael/Models/ausuarios.dart';
import 'package:http/http.dart' as http;
import 'package:http/retry.dart';

class AUsuarioProvider extends ChangeNotifier {
  List<Usuarios> prueba = [];
  final String _host = 'my.api.mockaroo.com';
  final Map<String, dynamic> _parameters = {'key': '778e9a80'};
  AUsuarioProvider() {
    _aUser();
  }

  _aUser() async {
    const String endPoint = 'usuarios.json';
    final url = Uri.https(_host, endPoint, _parameters);
    final client = RetryClient(http.Client());

    try {
      final response = await client.read(url);
      notifyListeners();
      print(response);
      prueba = List<Usuarios>.from(
          json.decode(response).map((x) => Usuarios.fromJson(x)));
    } finally {
      client.close();
    }
  }
}
