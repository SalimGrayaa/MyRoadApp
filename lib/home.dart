import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
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
              ElevatedButton(
                onPressed: (){

                },
                 child: Text('Next'),
                 ),
            ],
            ) ,
          ) ,
        ),

    );
    throw UnimplementedError();
  }

}