class Gastronomia {
  Gastronomia({
    this.id,
    this.nombreG,
    this.precio,
    this.origen,
    this.direccion,
    this.vendedor,
  });

  int? id;
  String? nombreG;
  String? precio;
  String? origen;
  String? direccion;
  String? vendedor;

  factory Gastronomia.fromJson(Map<String, dynamic> json) => Gastronomia(
        id: json["id"],
        nombreG: json["nombre_g"],
        precio: json["Precio"],
        origen: json["Origen"],
        direccion: json["Direccion"],
        vendedor: json["Vendedor"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "nombre_g": nombreG,
        "Precio": precio,
        "Origen": origen,
        "Direccion": direccion,
        "Vendedor": vendedor,
      };
}
