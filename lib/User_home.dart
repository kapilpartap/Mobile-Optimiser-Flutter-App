
import 'package:analyzer_app/battery/BatteryDetails.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'main.dart';

class UserHome extends StatefulWidget {
  createState() => HomePage();
}

class HomePage extends State<UserHome>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
       title: Text('HOME'),
          actions: [
          IconButton(onPressed: (){
            MyApp.themeNotifier.value = MyApp.themeNotifier.value == ThemeMode.light ?ThemeMode.dark :ThemeMode.light;
          },
              icon: Icon(MyApp.themeNotifier.value == ThemeMode.light ? Icons.dark_mode : Icons.light_mode,size: 30,)
          )
        ],
      ),
      drawer:  Drawer(
        child:  ListView(
          children: [
            Container(
                color: Colors.black54,
                height: 200,
                child:  DrawerHeader(
                    child: Container(
                      child: Column(children: [
                        CircleAvatar(
                          radius: 60,
                          backgroundImage: AssetImage('assets/images/img.png'),),
                        Padding(padding: EdgeInsets.only(top: 10),
                            child: Text('System Analyzer',style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold,fontSize: 20),))
                      ]),))
            ),
            Container(
              child: ListView(
                shrinkWrap: true,
                children: [
                  ListTile(title: Text('Home',style: TextStyle(color: Colors.blue),),
                    leading: Icon(Icons.home,color: Colors.blue),
                    trailing: Icon(Icons.arrow_forward_ios,size: 20,),
                    onTap: (){},),
                  Divider(),
                  ListTile(title: Text('cases',style: TextStyle(color: Colors.blue)),
                    leading: Icon(Icons.cases_outlined,color: Colors.blue),
                    trailing: Icon(Icons.arrow_forward_ios,size: 20,),
                    onTap: (){},),
                  Divider(),
                  ListTile(title: Text('search',style: TextStyle(color: Colors.blue)),
                    leading: Icon(Icons.search,color: Colors.blue),
                    trailing: Icon(Icons.arrow_forward_ios,size: 20,),
                    onTap: (){},),
                  Divider(),
                  ListTile(title: Text('settings',style: TextStyle(color: Colors.blue)),
                    leading: Icon(Icons.settings,color: Colors.blue),
                    trailing: Icon(Icons.arrow_forward_ios,size: 20,),
                    onTap: (){},),
                  Divider(),
                  ListTile(title:Text('Profile',style: TextStyle(color: Colors.blue)),
                    leading: Icon(Icons.theater_comedy,color: Colors.blue),
                    trailing: Icon(Icons.arrow_forward_ios,size: 20,),

                    onTap: (){ },),
                  Divider(),
                  ListTile(title: Text('Logout'),
                    leading: Icon(Icons.logout,color: Colors.blue,),onTap: (){
                      Navigator.pop(context);
                    },),
                  Divider(),
                ],
              ),
            )
          ],
        ),
      ),

      body: SingleChildScrollView(
        child: Column(
        children: [
          Container(
            padding: EdgeInsets.only(top: 15,left: 30),
            alignment: Alignment.topLeft,
            child: Text('Good Morning .',style: GoogleFonts.abel(fontSize: 30,fontWeight: FontWeight.bold),),
          ),
          GridView.count(
            primary: false,
              shrinkWrap: true,
            padding: EdgeInsets.all(20),
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            childAspectRatio: 7/7,
            children: [
             Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5)
                  ),

                  child: Align(alignment: Alignment.center,
                      child: GestureDetector( child:Column(
                          children: [

                            Icon(Icons.battery_2_bar,size: 50,color: Colors.red,),
                            Text('BATTERY',style: GoogleFonts.acme(fontSize: 30,color: Colors.red),),
                            Padding(padding: EdgeInsets.only(top: 10),
                                child: Text('Charging:75',style: GoogleFonts.aBeeZee(fontWeight: FontWeight.bold),)),
                          ]),
                        onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>BatteryDetails()));                        },

                      )
                  )),
              Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)
                  ),

                  child: Align(alignment: Alignment.center,
                      child: Column(
                          children: [
                            Icon(Icons.water_drop_outlined,size: 50,color: Colors.blue,),
                            Text('WATER',style: GoogleFonts.acme(fontSize: 30,color: Colors.blue),),
                            Padding(padding: EdgeInsets.only(top: 10),
                                child: Text('314 kbs',style: GoogleFonts.aBeeZee(fontWeight: FontWeight.bold),)),
                          ])
                  )),
              Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)
                  ),

                  child:  Align(alignment: Alignment.center,
                      child: Column(
                          children: [
                            Icon(Icons.energy_savings_leaf_outlined,size: 50,color: Colors.yellow,),
                            Text('ENERGY',style: GoogleFonts.acme(fontSize: 30,color: Colors.yellow),),
                            Padding(padding: EdgeInsets.only(top: 10),
                                child: Text('10.5 mbs',style: GoogleFonts.aBeeZee(fontWeight: FontWeight.bold),)),
                          ])
                  )),
              Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)
                  ),

                child:  Align(alignment: Alignment.center,
                 child: Column(
                   children: [
                 Icon(Icons.wifi,size: 50,color: Colors.greenAccent,),
                  Text('Wi-Fi',style: GoogleFonts.acme(fontSize: 30,color: Colors.greenAccent),),
                     Padding(padding: EdgeInsets.only(top: 10),
                     child: Text('4 kb',style: GoogleFonts.aBeeZee(fontWeight: FontWeight.bold),)),
              ])
              )),
           ],
          ),
          Container(
            padding: EdgeInsets.only(top: 30,left: 20),
            child: Align(alignment: Alignment.topLeft,
            child: Text('Rooms',style: GoogleFonts.actor(fontWeight: FontWeight.bold,fontSize: 30),),
          )),

          Container(
            padding: EdgeInsets.all(10),
            child:Card(
            shape: RoundedRectangleBorder(
               borderRadius: BorderRadius.circular(10)),
           elevation: 5,
             child: Center(
          child: ListTile(
           leading: Container(
            decoration: BoxDecoration(
            shape: BoxShape.circle),
               child:
               //CircleAvatar(
              //   radius: 30,
              //    child:
                 Icon(Icons.roofing,color: Colors.black,size: 40,),
          ),
       // ),
            title: Text(' Living Room',style: GoogleFonts.acme(fontSize: 20,
                fontWeight: FontWeight.bold, color: Colors.black )),
            subtitle: Text('Hey, this is my living room'),

          )))),
          Container(
              padding: EdgeInsets.all(10),
              child:Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  elevation: 5,
                  child: Center(
                      child: ListTile(
                          leading: Container(
                            decoration: BoxDecoration(
                                shape: BoxShape.circle),
                            child:
                            //CircleAvatar(
                            //   radius: 30,
                            //    child:
                            Icon(Icons.soup_kitchen,color: Colors.black,size: 40,),
                          ),
                          // ),
                          title: Text(' Kitchen',style: GoogleFonts.acme(fontSize: 20,
                              fontWeight: FontWeight.bold, color: Colors.black)),
                            subtitle: Text('Hey, this is my living room'),
                          )))),
          Container(
              padding: EdgeInsets.all(10),
              child:Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  elevation: 5,
                  child: Center(
                      child: ListTile(
                         leading: Container(
                            decoration: BoxDecoration(
                                shape: BoxShape.circle),
                            child:
                            CircleAvatar(
                              radius: 30,
                               child:
                            Icon(Icons.shopping_bag_outlined,color: Colors.black,size: 40,),
                          ),
                           ),
                          title: Text(' Office',style: GoogleFonts.acme(fontSize: 20,
                              fontWeight: FontWeight.bold, color: Colors.black)),
                          subtitle: Text('Hey, this is my living room'),

                          )))),

        ],

        
      ),
      ) );
  }
}










// import 'package:analyzer_app/main.dart';
// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
//
// class UserHome extends StatefulWidget{
//   createState()=> HomePage();
// }
//
// class HomePage extends  State<UserHome>{
//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//
//     return Scaffold(
//       appBar:  AppBar(
//        title: Text('HOME>>'),
//         actions: [
//           IconButton(onPressed: (){
//             MyApp.themeNotifier.value = MyApp.themeNotifier.value == ThemeMode.light ?ThemeMode.dark :ThemeMode.light;
//           },
//               icon: Icon(MyApp.themeNotifier.value == ThemeMode.light ? Icons.dark_mode : Icons.light_mode)
//           )
//         ],
//       ),
//       drawer:  Drawer(
//         child:  ListView(
//           children: [
//             Container(
//                 color: Colors.black54,
//                 height: 200,
//                 child:  DrawerHeader(
//                     child: Container(
//                       child: Column(children: [
//                         CircleAvatar(
//                           radius: 60,
//                           backgroundImage: AssetImage('assets/images/img.png'),),
//                         Padding(padding: EdgeInsets.only(top: 10),
//                             child: Text('System Analyzer',style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold,fontSize: 20),))
//                       ]),))
//             ),
//             Container(
//               child: ListView(
//                 shrinkWrap: true,
//                 children: [
//                   ListTile(title: Text('Home',style: TextStyle(color: Colors.blue),),
//                     leading: Icon(Icons.home,color: Colors.blue),
//                     trailing: Icon(Icons.arrow_forward_ios,size: 20,),
//                     onTap: (){},),
//                   Divider(),
//                   ListTile(title: Text('cases',style: TextStyle(color: Colors.blue)),
//                     leading: Icon(Icons.cases_outlined,color: Colors.blue),
//                     trailing: Icon(Icons.arrow_forward_ios,size: 20,),
//                     onTap: (){},),
//                   Divider(),
//                   ListTile(title: Text('search',style: TextStyle(color: Colors.blue)),
//                     leading: Icon(Icons.search,color: Colors.blue),
//                     trailing: Icon(Icons.arrow_forward_ios,size: 20,),
//                     onTap: (){},),
//                   Divider(),
//                   ListTile(title: Text('settings',style: TextStyle(color: Colors.blue)),
//                     leading: Icon(Icons.settings,color: Colors.blue),
//                     trailing: Icon(Icons.arrow_forward_ios,size: 20,),
//                     onTap: (){},),
//                   Divider(),
//                   ListTile(title:Text('Profile',style: TextStyle(color: Colors.blue)),
//                     leading: Icon(Icons.theater_comedy,color: Colors.blue),
//                     trailing: Icon(Icons.arrow_forward_ios,size: 20,),
//
//                     onTap: (){ },),
//                   Divider(),
//                   ListTile(title: Text('Logout'),
//                     leading: Icon(Icons.logout,color: Colors.blue,),onTap: (){
//                       Navigator.pop(context);
//                     },),
//                   Divider(),
//                 ],
//               ),
//             )
//           ],
//         ),
//       ),
//
//       body: Center(
//         child: Text('Hare krishn...!', style: GoogleFonts.acme(fontWeight: FontWeight.bold,fontSize: 20),),
//       ),
//     );
//   }
// }