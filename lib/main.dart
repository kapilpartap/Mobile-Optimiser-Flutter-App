

import 'package:analyzer_app/User_home.dart';
import 'package:analyzer_app/splash.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{

  static final ValueNotifier<ThemeMode> themeNotifier = ValueNotifier(ThemeMode.light);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
        valueListenable: themeNotifier,
        builder: (context,currentMode,child){
    // TODO: implement build
    return MaterialApp(
     debugShowCheckedModeBanner: false,
      title: "System Analyze",
      theme: ThemeData(primarySwatch: Colors.cyan),
      darkTheme: ThemeData.dark(),
      themeMode: currentMode,
      home: Splash(),
    );
  }
    );
  }
}