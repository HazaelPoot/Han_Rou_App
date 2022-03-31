import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:han_rou_hazael/Models/gastronomia.dart';
import 'package:http/http.dart' as http;
import 'package:http/retry.dart';

class GastronomiaProvider extends ChangeNotifier {
  List<Gastronomia> gastronomia = [];
  final String _host = 'my.api.mockaroo.com';
  final Map<String, dynamic> _parameters = {'key': '3fc87300'};
  GastronomiaProvider() {
    _gastronomia();
  }

  //https://my.api.mockaroo.com/gastronomia.json?key=3fc87300
  
  _gastronomia() async {
    const String endPoint = 'gastronomia.json';
    final url = Uri.https(_host, endPoint, _parameters);
    final client = RetryClient(http.Client());

    try {
      final response = await client.read(url);
      notifyListeners();
      print(response);
      gastronomia = List<Gastronomia>.from(
        json.decode(response).map((x) => Gastronomia.fromJson(x)));
    } finally {
      client.close();
    }
  }
}
