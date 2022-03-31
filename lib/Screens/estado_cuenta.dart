// ignore_for_file: deprecated_member_use
import 'package:flutter/material.dart';

class EstadoCuentaScreen extends StatefulWidget {
  const EstadoCuentaScreen ({Key? key}) : super(key: key);

  @override
  _FavoriteState createState() => _FavoriteState();
}

class _FavoriteState extends State<EstadoCuentaScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //AAP BAR
      appBar: AppBar(
        foregroundColor: Colors.white,
          title: const Text('Estado de Cuenta'),
          actions: const [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Icon(Icons.search),
            ),
            Icon(Icons.more_vert),
          ],
          backgroundColor: Color.fromRGBO(119,106,95,9),
        ),
      //CUERPO
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
                  const Padding(
                    padding: EdgeInsets.all(10.0),
                    child: SizedBox(
                      width: 325,
                      child: Text(
                      'Es Necesario que tu cuenta ' 
                      'este dado de alta (Activada) '
                      'en el sistema para que puedas ' 
                      'compartr información sobre tu comercio.',
                      style: TextStyle(
                      fontSize: 25.0,
                      letterSpacing: 2.0,
                      color: Colors.white,
                      fontStyle: FontStyle.italic,
                      
                    ),
                    ),),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    'Estado de Cuenta: ',
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
                  RaisedButton(
                    onPressed: () {
                      //Navigator.push( 
                      //context, MaterialPageRoute( builder: (context) => const LoginScreen()));
                    },
                    shape: const StadiumBorder(),
                    color: Colors.green,
                    textColor: Colors.white,
                    child: const Text(
                      "   ACTIVAR   ",
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
                      //Navigator.push( 
                      //context, MaterialPageRoute( builder: (context) => const Home()));
                    },
                    shape: const StadiumBorder(),
                    color: Colors.red,
                    textColor: Colors.white,
                    child: const Text(
                      "DESACTIVAR",
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