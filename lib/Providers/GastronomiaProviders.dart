import 'dart:convert';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:http/retry.dart';
import '../Models/ListaResponse.dart';
import '../Models/Response.dart';
import '../Models/gastronomia.dart';

class GastronomiaProvider extends ChangeNotifier {
  final String _host = 'hanrou.somee.com';
  ListaResponse request = new ListaResponse();

  GastronomiaProvider() {
    getGastronomia();
  }

  getGastronomia() async {
    const String endPoint = 'api/gastronomia';
    final url = Uri.http(_host, endPoint);
    final client = RetryClient(http.Client());

    try {
      final response = await client.read(url);
      notifyListeners();
      print(response);
      request = decodelist(json.decode(response));
    } finally {
      client.close();
    }
  }

  Future<Response> post(Gastronomia gastronomia) async {
    const String endPoint = 'api/gastronomia';
    final url = Uri.http(_host, endPoint);
    final client = RetryClient(http.Client());

    try {
      final response = await client.post(url,
          headers: {HttpHeaders.contentTypeHeader: 'application/json'},
          body: gastronomiaToJson(gastronomia));
      print(response.body);
      return decode(json.decode(response.body));
    } finally {
      client.close();
    }
  }

    decodelist(Map<String, dynamic> json) => ListaResponse(
        exito: json["exito"],
        mensaje: json["mensaje"],
        data: List<Gastronomia>.from(json["data"].map((x) => Gastronomia.fromJson(x))),
      );

  decode(Map<String, dynamic> json) => Response(
        exito: json["exito"],
        mensaje: json["mensaje"],
        data:json["data"]
      );

  Map<String, dynamic> encode(Response object) => {
        "exito": object.exito,
        "mensaje": object.mensaje,
        "data": object.data?.map((x) => x.toJson())
      };
}
