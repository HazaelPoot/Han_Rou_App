// ignore: duplicate_ignore
// ignore: file_names
// ignore_for_file: file_names
import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:han_rou_hazael/Screens/bar_screens/logout.dart';
import 'bar_screens/users.dart';
import 'index_hanrou.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);
  
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<Home> {
  int selectedpage =0;
  final _pageNo = [
    const IndexHanRouScreen(),
    const ProfileScreen(),
    const LogOut()
    ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pageNo[selectedpage],
      bottomNavigationBar: BottomNavyBar(
        backgroundColor: Colors.white,
        selectedIndex: selectedpage,
        onItemSelected: (index) {
          setState(() => selectedpage = index);
        },
        items: <BottomNavyBarItem>[
          BottomNavyBarItem(
            title: Text('Home'),
            icon: Icon(Icons.home),
            activeColor: Colors.blue
          ),
          BottomNavyBarItem(
            title: Text('User'),
            icon: Icon(Icons.people),
            activeColor: Colors.green
          ),
          BottomNavyBarItem(
            title: Text('Log Out'),
            icon: Icon(Icons.logout),
            activeColor: Colors.red
          ),
        ],
      ),
    );
  }
}