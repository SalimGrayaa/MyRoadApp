import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myroad/widgets/buttonwidget.dart';
import 'package:sizer/sizer.dart';

import 'home.dart';


void main() {
  runApp(Sizer(
         builder: (context, orientation, deviceType) {
        return const MaterialApp(
          home: MyApp() 
        );
      },
  ));
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE5E5E5),
      body : Column(
        children: <Widget>[
        Center(
          
            child: Container(
             margin: EdgeInsets.fromLTRB(0, 15.h, 0, 8.h),
              child: Image.asset('assets/logo.png',)
              )
              ),
              
            
          buttonwidget('Sign Up', home(), context),
          buttonwidget('Log In', home(), context),
                   
 

        ],
      ),
    );
  }
}
