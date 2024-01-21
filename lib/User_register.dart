
import 'package:analyzer_app/UserSetting.dart';
import 'package:analyzer_app/bottomNav.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:google_fonts/google_fonts.dart';


class UserRegister extends StatefulWidget{
  createState()=> UserDetailPage();
}

class UserDetailPage extends State<UserRegister>{

  TextEditingController name_controller= new TextEditingController();
  TextEditingController email_controller= new TextEditingController();
  TextEditingController phoneNumber_controller= new TextEditingController();
  TextEditingController city_controller= new TextEditingController();
  TextEditingController state_controller= new TextEditingController();

  final _formKey = GlobalKey<FormState>();

  bool emailEditable=true;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
              backgroundColor: Colors.transparent,
              body:  Center(
                  child: Form(
                      key: _formKey,
                      child: SingleChildScrollView(child:
                      Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30)
                          ),
                        // elevation: 50,
                          shadowColor: Colors.black,
                          color: Colors.white,
                          child: SizedBox(
                              width: 350,
                              height: 550,
                              child: Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: SingleChildScrollView(child:
                                Column(
                                  children: [
                                    Text('User Details',style: GoogleFonts.acme(fontSize: 25,fontWeight: FontWeight.bold),),
                                    //   CircleAvatar(radius: 60,
                                    // backgroundImage:  AssetImage('assets/images/img_1.png',),),
                                    //   SizedBox(height: 15,),
                                    //   Text("User Details",style: GoogleFonts.acme(fontWeight: FontWeight.bold,fontSize: 25),),
                                    Container(
                                      padding: EdgeInsets.only(top: 20,left: 15,right: 15),
                                      child: TextFormField(
                                        textInputAction: TextInputAction.done,
                                        autovalidateMode: AutovalidateMode.onUserInteraction,
                                        controller: name_controller,
                                        onChanged: (onChanged){},
                                        //cursorColor: kPrimaryColor,
                                        validator: RequiredValidator(errorText: 'Field cannot be empty'),
                                        onSaved: (String? value) {
                                          value!=name_controller;
                                        },
                                        decoration: InputDecoration(
                                          labelText: 'Name',
                                          prefixIcon: Icon(Icons.person),
                                          border: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(10.0),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.only(top: 20,left: 15,right: 15),
                                      child: TextFormField(
                                        textInputAction: TextInputAction.done,
                                        autovalidateMode: AutovalidateMode.onUserInteraction,
                                        enabled: emailEditable,
                                        controller: email_controller,
                                        onChanged: (onChanged){},
                                        //  cursorColor: kPrimaryColor,
                                        validator: (String? value){
                                          if(value!.isEmpty){
                                            return 'Please enter email';
                                          }
                                          if(!RegExp(
                                              r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
                                              .hasMatch(value)){
                                            return 'Please enter valid email';
                                          }
                                          return null;
                                        },
                                        onSaved: (String? value) {
                                          value!=email_controller;
                                        },
                                        decoration: InputDecoration(
                                          labelText: 'email',
                                          prefixIcon: Icon(Icons.mail),
                                          border: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(10.0),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.only(top: 20,left: 15,right: 15),
                                      child: TextFormField(
                                        controller: phoneNumber_controller,
                                        onChanged: (onChanged){},
                                        // cursorColor: kPrimaryColor,
                                        validator: RequiredValidator(errorText:'Field cannot be empty' ),
                                        onSaved: (String? value) {
                                          value!=phoneNumber_controller;
                                        },
                                        decoration: InputDecoration(
                                          labelText: 'phone number',
                                          prefixIcon: Icon(Icons.call),
                                          border: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(10.0),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.only(top: 20,left: 15,right: 15),
                                      child: TextFormField(
                                        controller: city_controller,
                                        decoration: InputDecoration(
                                          labelText: 'City',
                                          prefixIcon: Icon(Icons.location_city),
                                          border: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(10.0),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.only(top: 20,left: 15,right: 15),
                                      child: TextFormField(
                                        controller: state_controller,
                                        decoration: InputDecoration(
                                          labelText: 'State',
                                          prefixIcon: Icon(Icons.location_city),
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
                                        child: Text('Next'),
                                        onPressed: (){
                                          // if(name_controller.text==null || name_controller.text.length<3 )
                                          // {
                                          //   Fluttertoast.showToast(msg: 'name is required');
                                          //   return;
                                          // }
                                          // else if(email_controller.text==null || email_controller.text.length<3)
                                          // {
                                          //   Fluttertoast.showToast(msg: 'email is required');
                                          //   return;
                                          // }
                                          // else if(phoneNumber_controller.text==null || phoneNumber_controller.text.length<3 )
                                          // {
                                          //   Fluttertoast.showToast(msg: 'phone number is required');
                                          //   return;
                                          // }
                                          // else if(city_controller.text==null ||city_controller.text.length<3)
                                          // {
                                          //   Fluttertoast.showToast(msg: 'city is required');
                                          //   return;
                                          // }
                                          // else if(state_controller.text==null ||state_controller.text.length<3)
                                          // {
                                          //   Fluttertoast.showToast(msg: 'state is required');
                                          //   return;
                                          // }
                                          // else{
                                          //
                                          // }
                                          // print("elle elle lolololololololololo");
                                         Navigator.push(context, MaterialPageRoute(builder: (context)=>BottomNav()));
                                        },
                                      ), ),
                                  ],
                                ),
                                ),
                              )))))) );
  }
}

