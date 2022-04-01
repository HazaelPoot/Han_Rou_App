import 'dart:convert';

Artesanias artesaniaFromJson(String str) => Artesanias.fromJson(json.decode(str));
String artesaniaToJson(Artesanias data) => json.encode(data.toJson());

class Artesanias {
    Artesanias({
        required this.idProducto,
        this.codigo,
        this.nombre,
        this.material,
        required this.precio,
        required this.stock,
    });

    int idProducto;
    String? codigo;
    String? nombre;
    String? material;
    int precio;
    int stock;

    factory Artesanias.fromJson(Map<String, dynamic> json) => Artesanias(
        idProducto: json["idProducto"],
        codigo: json["codigo"],
        nombre: json["nombre"],
        material: json["material"],
        precio: json["precio"],
        stock: json["stock"],
    );

    Map<String, dynamic> toJson() => {
        "idProducto": idProducto,
        "codigo": codigo,
        "nombre": nombre,
        "material": material,
        "precio": precio,
        "stock": stock,
    };
}

