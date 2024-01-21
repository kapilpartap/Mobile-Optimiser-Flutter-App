
import 'package:analyzer_app/User_home.dart';
import 'package:analyzer_app/scanner.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'UserSetting.dart';


class BottomNav extends StatefulWidget{
  createState()=>  NavApp();
}

class NavApp extends State<BottomNav>{

  int currentIndex = 0;
  final screens = [
    UserHome(),
    Scanner(),
    UserSetting(),

  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        unselectedFontSize: 15,
        currentIndex: currentIndex,
         onTap: (index) => setState(() => currentIndex=index),
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.qr_code_scanner),label: 'Scanner'),
          BottomNavigationBarItem(icon: Icon(Icons.settings),label: 'Setting'),
        ],
      ),
    );
  }
}