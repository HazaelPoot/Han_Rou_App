// ignore_for_file: deprecated_member_use
import 'package:flutter/material.dart';
import 'package:han_rou_hazael/Screens/Log_In/logIn.dart';

class StartAplicationScreen extends StatefulWidget {
  const StartAplicationScreen ({Key? key}) : super(key: key);

  @override
  _FavoriteState createState() => _FavoriteState();
}

class _FavoriteState extends State<StartAplicationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            //IMAGEN DE FONDO
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/loginfrme.jpg'), fit: BoxFit.fill
              ),
            ),
          ),
          Opacity(
            //OPACIDAD DE LA IMAGEN
            opacity: 0.2,
            child: Container(
              decoration:  const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [Colors.white, Colors.white],
                ),
              ),
            ),
          ), 
          //CUERPO DE LA PANTALLA
            Center(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    //TITULO DE LA APP
                    Text(
                      'HanRou',
                      style: TextStyle(
                        fontSize: 80,
                        foreground: Paint()
                          ..style = PaintingStyle.stroke
                          ..strokeWidth = 2
                          ..color = Colors.white,
                      ),
                    ),
                    const SizedBox(height: 10),
                    //TEXTO DE PRESENTACION
                    const Padding(
                      padding: EdgeInsets.all(10.0),
                      child: SizedBox(
                         width: 320,
                        child: Text(
                        '      Artesanias, Turismo, Gastronomía y mucho mas... ',
                        style: TextStyle(
                        fontSize: 26.0,
                        letterSpacing: 2.0,
                        color: Colors.white,
                        fontStyle: FontStyle.italic,
                      ),
                      ),),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      '¿Como deseas iniciar? ',
                      style: TextStyle(
                      fontSize: 26.0,
                      letterSpacing: 2.0,
                      color: Colors.white,
                      fontStyle: FontStyle.normal,
                    ),
                    ),
                    const SizedBox(
                      height: 40.0,
                    ),
                    //BOTON PARA ACCEDER COMO ARTESANO
                    RaisedButton(
                      onPressed: () {
                        Navigator.push( 
                        context, MaterialPageRoute( builder: (context) => const LoginScreen()));
                      },
                      shape: const StadiumBorder(),
                      color: Colors.green,
                      textColor: Colors.white,
                      child: const Text(
                        "ARTESANO",
                        style: TextStyle(fontSize: 25.0),
                      ),
                      padding:
                          const EdgeInsets.symmetric(vertical: 20.0, horizontal: 80.0),
                      elevation: 0.0,
                    ),
                    const SizedBox(height: 20.0,),
                    //BOTON PARA ACCEDER COMO TURISTA: DISABLE
                    RaisedButton(
                      onPressed: () {
                        // Navigator.push( 
                        // context, MaterialPageRoute( builder: (context) => const LoginScreen()));
                      },
                      shape: const StadiumBorder(),
                      color: Colors.red,
                      textColor: Colors.white,
                      child: const Text(
                        "  TURISTA  ",
                        style: TextStyle(fontSize: 25.0),
                      ),
                      padding:
                          const EdgeInsets.symmetric(vertical: 20.0, horizontal: 80.0),
                      elevation: 0.0,
                    )
                  ],
                ),
              ),
            ),
        ],
      ),
    );
  }
}