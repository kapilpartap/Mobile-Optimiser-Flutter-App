
import 'package:analyzer_app/User_Passwrd.dart';
import 'package:analyzer_app/values/text_values.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:google_fonts/google_fonts.dart';


class UserOtp extends StatefulWidget{
  createState()=> OtpPage();
}

class OtpPage extends State<UserOtp>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30)
              ),
                child: SizedBox(
                  height: 450,
                  width: 350,
                  child: Container(
                    padding:  EdgeInsets.all(tDefaultSize),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Confirm OTP",
                          style: GoogleFonts.montserrat(fontWeight: FontWeight.bold, fontSize: 40.0),
                        ),
                        Text(tOtpSubTitle.toUpperCase(), style: Theme.of(context).textTheme.headline6),
                        const SizedBox(height: 40.0),
                        const Text("$tOtpMessage", textAlign: TextAlign.center),
                        const SizedBox(height: 20.0),
                        OtpTextField(
                            mainAxisAlignment: MainAxisAlignment.center,
                            numberOfFields: 6,
                            fillColor: Colors.black.withOpacity(0.1),
                            filled: true,
                            onSubmit: (code) => print("OTP is => $code")),
                        const SizedBox(height: 20.0),
                        SizedBox(
                          width: 160,
                          child: ElevatedButton(onPressed: () {
                           Navigator.push(context, MaterialPageRoute(builder: (context)=>UserPassword()));
                          },
                            child: const Text("Submit"),),
                        ),
                      ],
                    ),
                  ),
                 ))));


  }
}
