import 'package:flutter/material.dart';
import 'package:han_rou_hazael/Screens/estado_cuenta.dart';
import 'Artesanias_Screens/get_artesanias.dart';
import 'Gastronomia_Screens/get_gastronimia.dart';

class IndexHanRouScreen extends StatelessWidget {
  const IndexHanRouScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      //APP BAR
      appBar: AppBar(
         automaticallyImplyLeading: false,
        leadingWidth: 1,
        centerTitle: false,
        title: Image.asset('assets/HanRou.png', height: 50,),
        actions: const [
          Padding(
          padding: EdgeInsets.symmetric(horizontal: 15),
        child: Icon(Icons.dark_mode, color: Colors.blue),
           ),
          Padding(
          padding: EdgeInsets.symmetric(horizontal: 15),
            child: Icon(Icons.menu, color: Colors.blue),
          )
        ],
      ),
      //SCROLL PARA MOVIMIENTO
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(5),
          child: Column(
            children: <Widget>[
              //CARD 1: ESTADO DE CUENTA
              Center(
                child: SizedBox(
                  height: 230,
                child: Card(
                  clipBehavior: Clip.antiAlias,
                  child: InkWell(
                    child: Image.asset(
                    'assets/verificacion.jpg',
                     fit: BoxFit.cover,
                  ),
                  onTap: (){
                    Navigator.push(
                    context, MaterialPageRoute( builder: (context) => const EstadoCuentaScreen()));
                  },
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  elevation: 5,
                  margin: const EdgeInsets.all(10),
                )
                ),
              ),
              //CARD 2: ARTESANIAS
              SizedBox(
                height: 230,
                child: Card(
                  clipBehavior: Clip.antiAlias,
                  child: InkWell(
                    child: Image.asset(
                    'assets/artesanias.jpg',
                     fit: BoxFit.cover,
                  ),
                  onTap: (){
                    Navigator.push(
                    context, MaterialPageRoute( builder: (context) => ArtesaniasScreen()));
                  },
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  elevation: 5,
                  margin: const EdgeInsets.all(10),
                ),
              ),
              //CARD 3: GASTRONOMÍA
              SizedBox(
                height: 230,
                child: Card(
                  clipBehavior: Clip.antiAlias,
                  child: InkWell(
                    child: Image.asset(
                    'assets/gastronomia.jpg',
                    fit: BoxFit.cover,
                  ),
                  onTap: (){
                    Navigator.push(
                    context, MaterialPageRoute( builder: (context) =>  GastronomiaScreen()));
                  },
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  elevation: 1,
                  margin: const EdgeInsets.all(10),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
