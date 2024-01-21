
import 'package:analyzer_app/User_register.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class UserPassword extends StatefulWidget{
  createState()=> CreatePassword();
}

class CreatePassword extends State<UserPassword>{

  final _formKey = GlobalKey<FormState>();
  bool _isObscure = true;

  TextEditingController pwd_controller= new TextEditingController();
  TextEditingController cpwd_controller= new TextEditingController();
  bool emailEditable=true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
              backgroundColor: Colors.transparent,
              body: Form(
                  key: _formKey,
                  child:  Center(
                      child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)
                        ),
                        child: SizedBox(
                          height: 400,
                          width: 350,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              // CircleAvatar(radius: 60,
                              //   backgroundImage:  AssetImage('assets/images/img_1.png',),),
                              // SizedBox(height: 15,),
                              Text("Create Password",style: GoogleFonts.acme(fontWeight: FontWeight.bold,fontSize: 25),),

                              Container(
                                padding: EdgeInsets.only(top: 20,left: 15,right: 15),
                                child: TextFormField(
                                  textInputAction: TextInputAction.done,
                                  obscureText: _isObscure,
                                  autovalidateMode: AutovalidateMode.onUserInteraction,
                                  controller: pwd_controller,
                                  validator: (value) {
                                    if (value == null || value.isEmpty)
                                      return 'Field is required.';
                                    String pattern =
                                        r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$';
                                    if (!RegExp(pattern).hasMatch(value))
                                      return '''
                       Password must be at least 8 characters,
                      include an uppercase letter, number and symbol.
                           ''';
                                    return null;
                                  },
                                  onChanged: (onChanged){},
                                  // cursorColor: kPrimaryColor,
                                  //  validator: RequiredValidator(errorText:'Field cannot be empty' ),
                                  onSaved: (String? value) {
                                    value!=pwd_controller;
                                  },
                                  decoration: InputDecoration(
                                    labelText: 'Password',
                                    prefixIcon: Icon(Icons.lock),
                                    suffixIcon:IconButton(
                                      icon: Icon(
                                        _isObscure ? Icons.visibility_off : Icons.visibility,color:Colors.black,
                                      ),
                                      onPressed: () {
                                        setState(() {
                                          _isObscure = !_isObscure;
                                        });
                                      },),
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
                                  // obscureText: _isObscure,
                                  autovalidateMode: AutovalidateMode.onUserInteraction,
                                  controller: cpwd_controller,
                                  onChanged: (onChanged){},
                                  //  cursorColor: kPrimaryColor,
                                  validator: (value) {
                                    if (value == null || value.isEmpty)
                                      return 'Field is required.';
                                    String pattern =
                                        r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$';
                                    if (!RegExp(pattern).hasMatch(value))
                                      return '''
                    Password must be at least 8 characters,
                    include an uppercase letter, number and symbol.
                      ''';
                                    if(value!=pwd_controller.text)
                                      return 'Password does not match';
                                    return null;
                                  },
                                  onSaved: (String? value) {
                                    value!=cpwd_controller;
                                  },
                                  decoration: InputDecoration(
                                    labelText: 'Confirm Password',
                                    prefixIcon: Icon(Icons.lock_clock_outlined),
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
                                  child: Text('Save'),
                                  onPressed: (){
                                    Navigator.push(context, MaterialPageRoute(builder: (context)=>UserRegister()));
                                  },
                                ), ),
                            ],
                          ),
                        ),
                      ) ) ));
  }
}