import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myroad/Views/signup/signup_firstpage.dart';
import 'package:myroad/Views/widgets/buttonwidget.dart';
import 'package:myroad/Views/widgets/formspace.dart';
import 'package:sizer/sizer.dart';
class signup extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF4A919E),
      body:Container(
        padding: EdgeInsets.symmetric(vertical: 8.h,horizontal: 10.w),

        child:Form(
          
          child:Column(
            children:<Widget>[
              const SizedBox(height: 20.0),
              const Center(
                child:Text('Sign Up',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
                ),
              ),
              const SizedBox(height: 40.0),
              formspace('First Name'),
              const SizedBox(height: 15.0),
              formspace('Last Name'),
              const SizedBox(height: 30.0),
              buttonwidget('Next', signup_page(), context)
            ],
            ) ,
          ) ,
        ),

    );
    
  }

}