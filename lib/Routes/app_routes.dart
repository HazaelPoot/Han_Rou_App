import 'package:flutter/material.dart';
import 'package:han_rou_hazael/Models/items_menu.dart';
import 'package:han_rou_hazael/Screens/screens.dart';

class AppRoutes {
  static const String initialRoute = 'home';

  static final menuOptions = <ItemMenu>[
    ItemMenu(
      label: 'Agregar Artesanias', 
      route: 'addartesanias', icon: Icons.add, 
      screen: const AddArtesaniasScreen()),
    ItemMenu(
      label: 'Home HanRou', 
      route: 'indexHanRou', icon: Icons.home_filled, 
      screen: const IndexHanRouScreen()),
      ItemMenu(
      label: 'Home Screen', 
      route: initialRoute, 
      icon: Icons.home, 
      screen: const StartAplicationScreen()),
  ];

  static Map<String, Widget Function(BuildContext)> getRoutes(){
    Map<String, Widget Function(BuildContext)> appRoutes = {};

    for( final item in menuOptions){
      appRoutes.addAll({item.route : (BuildContext context) => item.screen});
    }

    return appRoutes;
  }
}