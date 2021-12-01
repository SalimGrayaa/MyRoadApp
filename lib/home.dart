import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myroad/signup_firstpage.dart';
import 'package:myroad/widgets/buttonwidget.dart';
class home extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
        padding: const EdgeInsets.symmetric(vertical: 20.0,horizontal: 50.0),
        child:Form(
          child:Column(
            children: <Widget>[
              const SizedBox(height: 20.0),
              TextFormField(
                onChanged: (val){
                  
                },
              ),
              const SizedBox(height: 20.0),
              TextFormField(
                obscureText: true,
                onChanged: (val){

                },
              ),
              const SizedBox(height: 20.0),
              buttonwidget('Next', signup_page(), context)
            ],
            ) ,
          ) ,
        ),

    );
    throw UnimplementedError();
  }

}