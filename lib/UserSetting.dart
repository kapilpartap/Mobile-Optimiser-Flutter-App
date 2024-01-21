
import 'package:flutter/material.dart';
import 'dart:async';
import 'package:flutter/services.dart';
import 'package:system_info_plus/system_info_plus.dart';


class UserSetting extends StatefulWidget {

  @override
  State<UserSetting> createState() => SettingPage();
}

class SettingPage extends State<UserSetting> {
  int _deviceMemory = -1;

  @override
  void initState() {
    super.initState();
    initPlatformState();
  }

  // Platform messages are asynchronous, so we initialize in an async method.
  Future<void> initPlatformState() async {
    int deviceMemory;

    try {
      deviceMemory = await SystemInfoPlus.physicalMemory ?? -1;
    } on PlatformException {
      deviceMemory = -1;
    }
    if (!mounted) return;

    setState(() {
      _deviceMemory = deviceMemory;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Memory.....!'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Text('Random Access Memory: $_deviceMemory MB (Megabytes)'),
            ),
          ],
        ),
    );
  }
}







// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
//
// class  UserSetting extends StatefulWidget{
//   createState()=> SettingPage();
// }
//
// class SettingPage extends State<UserSetting>{
//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Setting'),
//       ),
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             Container(
//               padding: EdgeInsets.only(top: 30),
//               child: Align(
//                 alignment: Alignment.topCenter,
//                 child: CircleAvatar(
//                radius: 60,
//               backgroundImage: AssetImage('assets/images/logo.jpg'),
//             )
//           ),
//
//
//
//         )],),
//       )
//     );
//   }
// }