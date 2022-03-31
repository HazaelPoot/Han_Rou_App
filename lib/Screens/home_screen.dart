import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:han_rou_hazael/Routes/app_routes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final menuOptions = AppRoutes.menuOptions;
    return Scaffold(
      //APP BAR
      appBar: AppBar(
        leading: const Icon(Icons.menu),
        title: const Text('  Han Rou'),
        actions: const [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Icon(Icons.search),
          ),
          Icon(Icons.more_vert),
        ],
        backgroundColor: Color.fromRGBO(229, 136, 18, 18),
      ),
      //LISTA DE PANTALLAS
      body: ListView.separated(
          itemBuilder: (context, index) => ListTile(
                title: Text(menuOptions[index].label),
                leading: Icon(menuOptions[index].icon),
                onTap: () {
                  if (menuOptions[index].route == AppRoutes.initialRoute) {
                    Navigator.pushReplacementNamed(
                        context, AppRoutes.initialRoute);
                  } else {
                    Navigator.pushNamed(context, menuOptions[index].route);
                  }
                },
              ),
          separatorBuilder: (context, index) => const Divider(),
          itemCount: menuOptions.length),
      backgroundColor: Colors.white,
      //BARRA DENAVEGACÍON
      bottomNavigationBar: ConvexAppBar(
        height: 57,
        items: const [
          TabItem(icon: Icons.people, title: ''),
          TabItem(icon: Icons.monetization_on, title: ''),
          TabItem(icon: Icons.home, title: ''),
          TabItem(icon: Icons.notifications, title: ''),
          TabItem(icon: Icons.logout, title: ''),
        ],
        initialActiveIndex: 2,
        backgroundColor: Colors.deepPurpleAccent[700],
      ),
    );
  }
}
