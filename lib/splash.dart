

import 'package:analyzer_app/User_phNo.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Splash extends StatefulWidget{
  createState()=> SplashPage();
}

class SplashPage extends State<Splash>{

  @override
  void initState() {
    // TODO: implement initState
    Future.delayed(Duration(seconds: 4), (){
    Navigator.push(context, MaterialPageRoute(builder: (context)=> UserNumber()));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Container(
        color: Colors.white,
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              child: Center(
                child: Image.asset('assets/images/logo.jpg'),
              ),),
            Container(
              padding: EdgeInsets.only(top: 40),
              child:  AnimatedTextKit(
                  animatedTexts: [
                      TyperAnimatedText('Empowered by Inovation..!!!',
                        textStyle: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold)),
                  ],
                  repeatForever: true,
                  onTap: () { },
                )

                // child: AnimatedTextKit(
                //   animatedTexts: [
                //     WavyAnimatedText('Hello..!',
                //         textStyle: TextStyle(
                //           color: Colors.blue,
                //           fontSize: 30,
                //         )),
                //     WavyAnimatedText('System Analyzer',
                //         textStyle: TextStyle(
                //           color: Colors.green[600],
                //           fontSize: 30,
                //         )),
                //   ],
                //   repeatForever: true,
                //   onTap: () {
                //     print("Tap Event");
                //   },
                // ),
            )
          ],
        ),
      )
    );
  }
}