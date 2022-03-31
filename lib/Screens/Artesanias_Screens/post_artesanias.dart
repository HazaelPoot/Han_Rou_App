// ignore_for_file: deprecated_member_use
import 'package:flutter/material.dart';

class AddArtesaniasScreen extends StatelessWidget {
  const AddArtesaniasScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Agregar Artesanía'),
        ),
        //FORMULARIO
        body: Container(
          child: SingleChildScrollView(
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
                const Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 17.0, vertical: 5.0),
                  child: TextField(
                    decoration: const InputDecoration(
                      icon: Icon(Icons.shopify, color: Colors.blueAccent),
                      filled: true,
                      labelText: 'Nombre de la Artesania',
                    ),
                  ),
                ),
                //PRECCIO DEL PRODUCTO
                const Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 17.0, vertical: 5.0),
                  child: TextField(
                    decoration: const InputDecoration(
                      icon:
                          Icon(Icons.monetization_on, color: Colors.blueAccent),
                      filled: true,
                      labelText: 'Precio de la Artesania',
                    ),
                  ),
                ),
                // STOCK
                const Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 17.0, vertical: 5.0),
                  child: TextField(
                    decoration: const InputDecoration(
                      icon: Icon(Icons.numbers_rounded, color: Colors.blue),
                      filled: true,
                      labelText: 'Stock Disponible',
                    ),
                  ),
                ),
                // Descripcion
                const Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 17.0, vertical: 5.0),
                  child: TextField(
                    decoration: const InputDecoration(
                      icon: Icon(Icons.description, color: Colors.blue),
                      filled: true,
                      labelText: 'Descripción del Producto',
                    ),
                  ),
                ),
                //NOMBRE DEL VENDEDOR
                const Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 17.0, vertical: 5.0),
                  child: TextField(
                    decoration: const InputDecoration(
                      icon: Icon(Icons.people_alt_rounded, color: Colors.blue),
                      filled: true,
                      labelText: 'Nombre del Vendedor',
                    ),
                  ),
                ),
                SizedBox(height: 10),
                //BOTON PARA GUARDAR
                RaisedButton(
                  onPressed: () {
                    //Navigator.push(
                    //context, MaterialPageRoute( builder: (context) => const Home()));
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
        ));
  }
}
