

import 'package:analyzer_app/User_otp.dart';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:form_field_validator/form_field_validator.dart';

class UserNumber extends StatefulWidget{
  createState()=> NumberPage();
}

class NumberPage extends State<UserNumber>{

  TextEditingController phoneNo_controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.transparent,
      body:  Center(
        child: Card(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30)
          ),
          // elevation: 50,
          shadowColor: Colors.black,
          color: Colors.white,
          child: SizedBox(
            width: 350,
            height: 400,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 50,
                    backgroundImage:  AssetImage('assets/images/logo.jpg'),
                  ), //CircleAvatar
                  Container(
                    padding: EdgeInsets.only(top: 20,left: 15,right: 15),
                    child: TextFormField(
                      controller: phoneNo_controller,
                      onChanged: (onChanged){},
                      // cursorColor: kPrimaryColor,
                      validator: RequiredValidator(errorText:'Field cannot be empty' ),
                      onSaved: (String? value) {
                        value!=phoneNo_controller;
                      },

                      decoration: InputDecoration(
                        labelText: 'Phone_No',
                        prefixIcon: Icon(Icons.phone_android_sharp),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                    ),
                  ),
                  Container(
                      height: 70,
                      width: 170,
                      padding: EdgeInsets.only(top: 20),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary:Colors.blue,
                          onPrimary: Colors.white,
                        ),
                        child: Text('Submit '),
                        onPressed: (){
                          if(phoneNo_controller.text==null || phoneNo_controller.text.length<3 )
                            {
                              Fluttertoast.showToast(msg: 'Number is required');
                              return;
                            }
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>UserOtp()));
                        },
                      )),
                ],
              ), //Column
            ), //Padding
          ), //SizedBox
        ), //Card
      ), //Center,
    );
  }
}