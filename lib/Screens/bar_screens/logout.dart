// ignore_for_file: deprecated_member_use
import 'package:flutter/material.dart';
import 'package:han_rou_hazael/Screens/Home.dart';
import 'package:han_rou_hazael/Screens/screens.dart';

class LogOut extends StatefulWidget {
  const LogOut ({Key? key}) : super(key: key);

  @override
  _FavoriteState createState() => _FavoriteState();
}

class _FavoriteState extends State<LogOut> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Stack(
        children: <Widget>[
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/loginfrme.jpg'), fit: BoxFit.fill
              ),
            ),
          ),
          Opacity(
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
          Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
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
                  Image.asset('assets/icono.png'),
                  const SizedBox(height: 10),
                  const Text(
                    '¿Deseas cerrar la sesión?',style: TextStyle(
                    fontSize: 26.0,
                    letterSpacing: 2.0,
                    color: Colors.white,
                    fontStyle: FontStyle.italic,
                  ),
                  ),
                  const SizedBox(
                    height: 40.0,
                  ),
                  RaisedButton(
                    onPressed: () {
                      Navigator.push( 
                      context, MaterialPageRoute( builder: (context) => const StartAplicationScreen()));
                    },
                    shape: const StadiumBorder(),
                    color: Colors.green,
                    textColor: Colors.white,
                    child: const Text(
                      " ACEPTAR ",
                      style: TextStyle(fontSize: 25.0),
                    ),
                    padding:
                        const EdgeInsets.symmetric(vertical: 20.0, horizontal: 80.0),
                    elevation: 0.0,
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  RaisedButton(
                    onPressed: () {
                      Navigator.push( 
                      context, MaterialPageRoute( builder: (context) => const Home()));
                    },
                    shape: const StadiumBorder(),
                    color: Colors.red,
                    textColor: Colors.white,
                    child: const Text(
                      "CANCELAR",
                      style: TextStyle(fontSize: 25.0),
                    ),
                    padding:
                        const EdgeInsets.symmetric(vertical: 20.0, horizontal: 80.0),
                    elevation: 0.0,
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}