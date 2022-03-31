// ignore_for_file: deprecated_member_use
import 'package:flutter/material.dart';
import 'package:han_rou_hazael/Screens/Home.dart';
import 'package:han_rou_hazael/Screens/Log_In/post_login.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            //IMAGEN DE FONDO
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/loginfrme.jpg'), fit: BoxFit.fill),
            ),
          ),
          Opacity(
            //OPACIDAD DE LA IMAGEN
            opacity: 0.2,
            child: Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [Colors.white, Colors.white],
                ),
              ),
            ),
          ),
          Center(
            //CUERPO DE LA PANTALLA
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  //TITULO DE LA APP
                  Text(
                    'HanRou',
                    style: TextStyle(
                      fontSize: 70,
                      foreground: Paint()
                        ..style = PaintingStyle.stroke
                        ..strokeWidth = 2
                        ..color = Colors.white,
                    ),
                  ),
                  const SizedBox(height: 10),
                  //ICONO DE LA APLICACIÓN
                  Image.asset('assets/icono.png'),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    'Bienvenido Artesano...',
                    style: TextStyle(
                      fontSize: 25.0,
                      letterSpacing: 2.0,
                      color: Colors.white,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                  const SizedBox(height: 10),
                  //INPUT PARA INGRESAR USUARIO
                  const Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 35.0, vertical: 22.0),
                    child: TextField(
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          border: InputBorder.none,
                          hintText: 'Usuario / Email',
                          contentPadding: EdgeInsets.all(16.0),
                          prefixIcon: Icon(
                            Icons.email,
                            color: Colors.lightBlueAccent,
                          )),
                      keyboardType: TextInputType.emailAddress,
                    ),
                  ),
                  //INPUT PARA INGRESAR CONTRASEÑA
                  const Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 35.0, vertical: 12.0),
                    child: TextField(
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          border: InputBorder.none,
                          hintText: 'Password',
                          contentPadding: EdgeInsets.all(16.0),
                          prefixIcon: Icon(
                            Icons.lock,
                            color: Colors.lightBlueAccent,
                          )),
                      obscureText: true,
                    ),
                  ),
                  const SizedBox(
                    height: 40.0,
                  ),
                  //BOTON PARA INICIAR SESIÓN
                  RaisedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Home()));
                    },
                    shape: const StadiumBorder(),
                    color: Colors.lightBlueAccent,
                    textColor: Colors.white,
                    child: const Text(
                      "LOG IN",
                      style: TextStyle(fontSize: 25.0),
                    ),
                    padding: const EdgeInsets.symmetric(
                        vertical: 20.0, horizontal: 80.0),
                    elevation: 0.0,
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  //BOTON PARA CREAR USUARIO
                  RaisedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const RegistroUsersScreen()));
                    },
                    shape: const RoundedRectangleBorder(),
                    color: Colors.white,
                    textColor: Colors.lightBlueAccent,
                    child: const Text(
                      "SIG IN",
                      style: TextStyle(fontSize: 15.0),
                    ),
                    padding: const EdgeInsets.symmetric(
                        vertical: 15.0, horizontal: 50.0),
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
