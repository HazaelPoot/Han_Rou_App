class Artesanias {
    Artesanias({
        this.id,
        this.nombre,
        this.precio,
        this.stock,
        this.descripcion,
        this.vendedor,
    });

    int? id;
    String? nombre;
    int? precio;
    int? stock;
    String? descripcion;
    String? vendedor;

    factory Artesanias.fromJson(Map<String, dynamic> json) => Artesanias(
        id: json["id"],
        nombre: json["Nombre"],
        precio: json["Precio"],
        stock: json["Stock"],
        descripcion: json["Descripcion"],
        vendedor: json["Vendedor"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "Nombre": nombre,
        "Precio": precio,
        "Stock": stock,
        "Descripcion": descripcion,
        "Vendedor": vendedor,
    };
}
