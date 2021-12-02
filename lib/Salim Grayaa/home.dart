import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myroad/Salim%20Grayaa/signup.dart';
import 'package:myroad/Salim%20Grayaa/widgets/buttonwidget.dart';
import 'package:sizer/sizer.dart';

class home extends StatelessWidget{
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
          const SizedBox(height: 20.0),
          buttonwidget('Sign Up', signup(), context),
          const SizedBox(height: 20.0),
          buttonwidget('Log In', signup(), context),
                   
 

        ],
      ),
    );
    
  }
 


}