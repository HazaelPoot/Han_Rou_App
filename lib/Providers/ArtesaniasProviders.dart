import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:han_rou_hazael/Models/artesanos.dart';
import 'package:http/http.dart' as http;
import 'package:http/retry.dart';

class ArtesaniasProvider extends ChangeNotifier{
  List<Artesanias> artesania = [];
  final String _host ='my.api.mockaroo.com';
  final Map<String, dynamic> _parameters = {'key':'778e9a80'};
  ArtesaniasProvider(){
    _artesanias();
  }
  //https://my.api.mockaroo.com/reporte.json?key=960d9f80
  _artesanias() async {
    const String endPoint ='artesanos.json';
    final url = Uri.https(_host, endPoint, _parameters);
    final client = RetryClient(http.Client());

    try {
      final response = await client.read(url);
      notifyListeners();
      print(response);
      artesania =
         List<Artesanias>.from(json.decode(response).map((x) => Artesanias.fromJson(x)));
    } finally {
      client.close();
     }
  } 
}