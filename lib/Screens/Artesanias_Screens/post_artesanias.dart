// ignore_for_file: deprecated_member_use
import 'package:flutter/material.dart';
import 'package:han_rou_hazael/Models/ListaResponse.dart';
import 'package:han_rou_hazael/Models/artesanos.dart';
import 'package:han_rou_hazael/Screens/Artesanias_Screens/get_artesanias.dart';
import 'package:provider/provider.dart';

import '../../Providers/ArtesaniasProviders.dart';

class AddArtesaniasScreen extends StatelessWidget {
  AddArtesaniasScreen({Key? key}) : super(key: key);
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final artesaniaProvider = Provider.of<ArtesaniasProvider>(context);
    final ListaResponse artesania = artesaniaProvider.request;
    final Artesanias _artesania = Artesanias(precio: 0, stock: 0);

    return Scaffold(
        appBar: AppBar(
          title: const Text('Agregar Artesanía'),
        ),
        //FORMULARIO
        body: Container(
            child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                //FOTO DE PERFIL
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: SizedBox(
                    height: 230,
                    width: 600,
                    child: Card(
                      // color: Colors.amber,
                      child: SizedBox(
                        child: Image.asset(
                          'assets/agregafoto.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ),
                //NOMBRE DEL PRODUCTO
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 17.0, vertical: 5.0),
                  child: TextFormField(
                      initialValue: _artesania.nombre,
                      maxLines: 1,
                      keyboardType: TextInputType.name,
                      onChanged: (value) => _artesania.nombre = value,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Este campo es obligatorio';
                        }
                        if (value.length > 50) {
                          return ("No Puede escribir mas de 50 caracteres.");
                        }
                        return null;
                      },
                      decoration: const InputDecoration(
                        icon: Icon(Icons.shopify, color: Colors.blueAccent),
                        filled: true,
                        labelText: 'Nombre de la Artesania',
                      ),
                    )
                ),
                //PRECCIO DEL PRODUCTO
                Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 17.0, vertical: 5.0),
                    child: TextFormField(
                      initialValue: _artesania.precio.toString(),
                      maxLines: 1,
                      keyboardType: TextInputType.number,
                      onChanged: (value) => _artesania.precio == int.parse(value),
                      validator: (value) {
                      if (value!.isEmpty) {
                        return ("Este campo es obligatorio");
                      }
                      final n = num.tryParse(value);
                      if (n == 0 || n == null) {
                        return 'El Precio tiene que ser mayor a cero';
                      }
                      if (n <= 1) {
                        return 'El Precio debe ser mayor a cero';
                      }
                      return null;
                    },
                      decoration: const InputDecoration(
                        icon: Icon(Icons.monetization_on_rounded, color: Colors.blueAccent),
                        filled: true,
                        labelText: 'Precio de la Artesania',
                      ),
                    )),
                // STOCK
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 17.0, vertical: 5.0),
                  child: TextFormField(
                    initialValue: _artesania.stock.toString(),
                    onChanged: (value) => _artesania.stock == int.parse(value),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return ("Este campo es obligatorio");
                      }
                      final n = num.tryParse(value);
                      if (n == 0 || n == null) {
                        return 'El Stock tiene que ser mayor a uno';
                      }
                      if (n <= 1) {
                        return 'El Precio debe ser mayor a uno';
                      }
                      return null;
                    },
                    decoration: const InputDecoration(
                      icon: Icon(Icons.numbers_rounded, color: Colors.blue),
                      filled: true,
                      labelText: 'Stock Disponible',
                    ),
                  ),
                ),
                // MATERIAL
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 17.0, vertical: 5.0),
                  child: TextFormField(
                      initialValue: _artesania.material,
                      maxLines: 1,
                      keyboardType: TextInputType.name,
                      onChanged: (value) => _artesania.material = value,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Este campo es obligatorio';
                        }
                        if (value.length > 50) {
                          return ("No Puede escribir mas de 50 caracteres.");
                        }
                        return null;
                      },
                      decoration: const InputDecoration(
                        icon: Icon(Icons.handyman_rounded, color: Colors.blueAccent),
                        filled: true,
                        labelText: 'Material de la Artesania',
                      ),
                    )
                ),
                //CODIGO
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 17.0, vertical: 5.0),
                  child: TextFormField(
                      initialValue: _artesania.codigo,
                      maxLines: 1,
                      keyboardType: TextInputType.name,
                      onChanged: (value) => _artesania.codigo = value,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Este campo es obligatorio';
                        }
                        if (value.length > 50) {
                          return ("No Puede escribir mas de 50 caracteres.");
                        }
                        return null;
                      },
                      decoration: const InputDecoration(
                        icon: Icon(Icons.shopify, color: Colors.blueAccent),
                        filled: true,
                        labelText: 'Códido del Producto',
                      ),
                    )
                ),
                SizedBox(height: 10),
                //BOTON PARA GUARDAR
                RaisedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      artesaniaProvider.post(_artesania);
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ArtesaniasScreen()));
                    }
                  },
                  shape: const RoundedRectangleBorder(),
                  color: Colors.blue,
                  textColor: Colors.white,
                  child: const Text(
                    "Save",
                    style: TextStyle(fontSize: 20.0),
                  ),
                  padding: const EdgeInsets.symmetric(
                      vertical: 10.0, horizontal: 125.0),
                  elevation: 2.0,
                ),
              ],
            ),
          ),
        )));
  }
}
