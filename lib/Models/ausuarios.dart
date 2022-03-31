import 'dart:convert';

Usuarios usuariosFromJson(String str) => Usuarios.fromJson(json.decode(str));

String usuariosToJson(Usuarios data) => json.encode(data.toJson());

class Usuarios {
    Usuarios({
        this.id,
        this.nombre,
        this.apellido,
        this.email,
        this.tefelefono,
        this.ciudad,
        this.direccion,
        this.asociacion,
    });

    int? id;
    String? nombre;
    String? apellido;
    String? email;
    String? tefelefono;
    String? ciudad;
    String? direccion;
    String? asociacion;

    factory Usuarios.fromJson(Map<String, dynamic> json) => Usuarios(
        id: json["id"],
        nombre: json["Nombre"],
        apellido: json["Apellido"],
        email: json["Email"],
        tefelefono: json["Tefelefono"],
        ciudad: json["Ciudad"],
        direccion: json["Direccion"],
        asociacion: json["Asociacion"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "Nombre": nombre,
        "Apellido": apellido,
        "Email": email,
        "Tefelefono": tefelefono,
        "Ciudad": ciudad,
        "Direccion": direccion,
        "Asociacion": asociacion,
    };
}
