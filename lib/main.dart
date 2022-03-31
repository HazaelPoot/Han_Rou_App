import 'dart:io';
import 'package:flutter/material.dart';
import 'package:han_rou_hazael/Providers/ArtesaniasProviders.dart';
import 'package:han_rou_hazael/Routes/app_routes.dart';
import 'package:provider/provider.dart';
import 'Providers/AUsuarioProviders.dart';
import 'Providers/GastronomiaProviders.dart';
import 'Themes/app_theme.dart';

void main() => runApp(const MyApp());

class MyHttpOverrides extends HttpOverrides {
  @override
  // ignore: override_on_non_overriding_member
  HttpClient createHttpclient(SecurityContext? context) =>
      super.createHttpClient(context)
        ..badCertificateCallback = (cert, host, port) => true;
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

//Consumos
  @override
  Widget build(BuildContext context) {
    HttpOverrides.global = MyHttpOverrides();
    return MultiProvider(
        providers: [
          //Artesanias
          ChangeNotifierProvider(
            create: (context) => ArtesaniasProvider(),
            lazy: false,
          ),
          //Gastronomia
          ChangeNotifierProvider(
            create: (context) => GastronomiaProvider(),
            lazy: false,
          ),
          //Usuarios
          ChangeNotifierProvider(
            create: (context) => AUsuarioProvider(),
            lazy: false,
          ),
        ],
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          home: const Scaffold(),
          initialRoute: AppRoutes.initialRoute,
          routes: AppRoutes.getRoutes(),
          theme: AppTheme.lightTheme,
        ));
  }
}