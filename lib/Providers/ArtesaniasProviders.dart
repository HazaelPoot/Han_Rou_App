import 'dart:convert';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:han_rou_hazael/Models/artesanos.dart';
import 'package:http/http.dart' as http;
import 'package:http/retry.dart';
import '../Models/ListaResponse.dart';
import '../Models/Response.dart';

class ArtesaniasProvider extends ChangeNotifier {
  final String _host = 'hanrou.somee.com';
  ListaResponse request = new ListaResponse();

  ArtesaniasProvider() {
    getArtesanias();
  }

  getArtesanias() async {
    const String endPoint = 'api/producto';
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

  Future<Response> post(Artesanias artesanias) async {
    const String endPoint = 'api/producto';
    final url = Uri.http(_host, endPoint);
    final client = RetryClient(http.Client());

    try {
      final response = await client.post(url,
          headers: {HttpHeaders.contentTypeHeader: 'application/json'},
          body: artesaniaToJson(artesanias));
      print(response.body);
      return decode(json.decode(response.body));
    } finally {
      client.close();
    }
  }

  decodelist(Map<String, dynamic> json) => ListaResponse(
        exito: json["exito"],
        mensaje: json["mensaje"],
        data: List<Artesanias>.from(json["data"].map((x) => Artesanias.fromJson(x))),
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
