import 'dart:convert';

class ListaResponse {
    ListaResponse({
        this.exito,
        this.mensaje,
        this.data,
    });

    int? exito;
    String? mensaje;
    List<dynamic>? data;

}