import 'package:flutter/material.dart';
import 'package:han_rou_hazael/Models/ausuarios.dart';
import 'package:provider/provider.dart';
import '../../Providers/AUsuarioProviders.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final usuarioProvider = Provider.of<AUsuarioProvider>(context);
    final List<Usuarios> usuario = usuarioProvider.prueba;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Mi Perfil'),
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(13),
          child: Column(
            children: <Widget>[
              ...usuario.map(
                (usuario) =>
                    // CARDS
                    Center(
                      
                    ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
