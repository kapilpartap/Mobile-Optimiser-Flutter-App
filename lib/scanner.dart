
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Scanner extends StatefulWidget{
  createState()=> ScannerPage();
}

class ScannerPage extends State<Scanner>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar:  AppBar(
        title: Text(' qr_Scanner'),
      ),
      body: Container(),
    );
  }
}
 