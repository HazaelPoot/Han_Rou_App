// ignore_for_file: deprecated_member_use
import 'package:flutter/material.dart';
import 'package:han_rou_hazael/Screens/Log_In/logIn.dart';

class RegistroUsersScreen extends StatelessWidget {
  const RegistroUsersScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Registrar Usuario'),
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
                      child: SizedBox(
                        child: Image.asset(
                          'assets/agregafoto.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ),
                //NOMBRE 
                const Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 17.0, vertical: 5.0),
                  child: TextField(
                    decoration: const InputDecoration(
                      icon: Icon(Icons.people_alt_sharp, color: Colors.blueAccent),
                      filled: true,
                      labelText: 'Nombres',
                    ),
                  ),
                ),
                //APELLIDOS
                const Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 17.0, vertical: 5.0),
                  child: TextField(
                    decoration: const InputDecoration(
                      icon:
                          Icon(Icons.person_pin, color: Colors.blueAccent),
                      filled: true,
                      labelText: 'Apellidos',
                    ),
                  ),
                ),
                // CORREO
                const Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 17.0, vertical: 5.0),
                  child: TextField(
                    decoration: const InputDecoration(
                      icon: Icon(Icons.alternate_email, color: Colors.blue),
                      filled: true,
                      labelText: 'Correo Electronico',
                    ),
                  ),
                ),
                //RTELEFONO
                const Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 17.0, vertical: 5.0),
                  child: TextField(
                    decoration: const InputDecoration(
                      icon: Icon(Icons.phone, color: Colors.blue),
                      filled: true,
                      labelText: 'Numero Telefonico',
                    ),
                  ),
                ),
                //CIUDAD
                const Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 17.0, vertical: 5.0),
                  child: TextField(
                    decoration: const InputDecoration(
                      icon: Icon(Icons.location_on, color: Colors.blue),
                      filled: true,
                      labelText: 'Ciudad',
                    ),
                  ),
                ),
                SizedBox(height: 10),
                //PASSWORD
                const Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 17.0, vertical: 5.0),
                  child: TextField(
                    decoration: const InputDecoration(
                      icon: Icon(Icons.password_outlined, color: Colors.blue),
                      filled: true,
                      labelText: 'Password',
                    ),
                  ),
                ),
                SizedBox(height: 10),
                //ASOCIACION
                const Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 17.0, vertical: 5.0),
                  child: TextField(
                    decoration: const InputDecoration(
                      icon: Icon(Icons.corporate_fare_rounded, color: Colors.blue),
                      filled: true,
                      labelText: 'Asociación',
                    ),
                  ),
                ),
                SizedBox(height: 10),
                //BOTON PARA GUARDAR
                RaisedButton(
                  onPressed: () {
                    Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const LoginScreen()));
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
