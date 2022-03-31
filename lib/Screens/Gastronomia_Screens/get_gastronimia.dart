import 'package:flutter/material.dart';
import 'package:han_rou_hazael/Models/gastronomia.dart';
import 'package:han_rou_hazael/Screens/Gastronomia_Screens/post_gastronomia.dart';
import 'package:provider/provider.dart';
import '../../Providers/GastronomiaProviders.dart';

class GastronomiaScreen extends StatelessWidget {
  GastronomiaScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final gastronomiaProvider = Provider.of<GastronomiaProvider>(context);
    final List<Gastronomia> gastronomia = gastronomiaProvider.gastronomia;

    return Scaffold(
      //APP BAR
      appBar: AppBar(
        title: const Text('Gastronomía'),
        actions: const [
          Icon(Icons.search),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Icon(Icons.more_vert),
          ),
        ],
      ),
      //GRIDVIEW
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(5),
          child: Column(
            children: <Widget>[
              ...gastronomia.map(
                (gastronomia) =>
                    //CARDS
                    Center(
                        child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  margin: const EdgeInsets.all(15),
                  elevation: 5,
                  clipBehavior: Clip.antiAlias,
                  child: InkWell(
                    onTap: (() {}),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ListTile(
                          leading: Icon(Icons.shopping_bag),
                          title: Text(
                            '${gastronomia.nombreG}',
                            style:
                                TextStyle(fontSize: 20, fontFamily: 'Raleway'),
                          ),
                        ),
                        Stack(
                          alignment: Alignment.bottomLeft,
                          children: [
                            Center(
                              child: Text('',
                                  style: TextStyle(
                                    color: Colors.white,
                                    backgroundColor:
                                        Color.fromRGBO(0, 0, 0, 0.596),
                                    fontSize: 20,
                                  )),
                            ),
                            Ink.image(
                              image: AssetImage('assets/comida.jpg'),
                              height: 200,
                              fit: BoxFit.fitWidth,
                            )
                          ],
                        ),
                        Padding(
                          padding:
                              EdgeInsets.only(left: 16, top: 16, right: 16),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text('Precio: ${gastronomia.precio}'),
                              Text('Lugar de origen: ${gastronomia.origen}'),
                              Text('Vendedor: ${gastronomia.vendedor}'),
                              Text('Direccion: ${gastronomia.direccion}')
                            ],
                          ),
                        ),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              TextButton.icon(
                                icon: const Icon(Icons.visibility,
                                    size: 20.0,
                                    color: Color.fromARGB(255, 11, 86, 172)),
                                label: const Text(
                                  'Visitar',
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 0, 2, 3),
                                  ),
                                ),
                                onPressed: () {
                                  ('Confirmación');
                                },
                              ),
                              TextButton.icon(
                                icon: const Icon(Icons.edit,
                                    size: 20.0,
                                    color: Color.fromARGB(255, 6, 150, 25)),
                                label: const Text(
                                  'Editar',
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 0, 2, 3),
                                  ),
                                ),
                                onPressed: () {
                                  ('Confirmación');
                                },
                              ),
                              TextButton.icon(
                                icon: const Icon(Icons.delete_forever,
                                    size: 20.0,
                                    color: Color.fromARGB(255, 240, 68, 68)),
                                label: const Text(
                                  'Elimar',
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 0, 2, 3),
                                  ),
                                ),
                                onPressed: () {
                                  ('Elimanr');
                                },
                              ),
                            ]),
                      ],
                    ),
                  ),
                )),
              )
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Container(
        height: 70,
        width: 70,
        padding: const EdgeInsets.all(5),
        margin: const EdgeInsets.all(5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40),
        ),
        child: FloatingActionButton(
          child: const Icon(Icons.add),
          //Navegación
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const AddGastronomiaScreen()));
          },
          backgroundColor: Colors.blue,
        ),
      ),
    );
  }
}
