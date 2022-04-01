import 'dart:convert';

Gastronomia gastronomiaFromJson(String str) => Gastronomia.fromJson(json.decode(str));
String gastronomiaToJson(Gastronomia data) => json.encode(data.toJson());

class Gastronomia {
    Gastronomia({
        this.idFood,
        this.nombre,
        this.precio,
        this.origen,
        this.direccion,
        this.contacto,
        this.vendedor,
    });

    int? idFood;
    String? nombre;
    String? precio;
    String? origen;
    String? direccion;
    String? contacto;
    String? vendedor;

    factory Gastronomia.fromJson(Map<String, dynamic> json) => Gastronomia(
        idFood: json["idFood"],
        nombre: json["nombre"],
        precio: json["precio"],
        origen: json["origen"],
        direccion: json["direccion"],
        contacto: json["contacto"],
        vendedor: json["vendedor"],
    );

    Map<String, dynamic> toJson() => {
        "idFood": idFood,
        "nombre": nombre,
        "precio": precio,
        "origen": origen,
        "direccion": direccion,
        "contacto": contacto,
        "vendedor": vendedor,
    };
}

