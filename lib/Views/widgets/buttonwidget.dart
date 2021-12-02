import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

Widget buttonwidget(String txt ,Widget page , context ){
  return InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return page;
              }));
            },
            child: Container(
              width: 80.w,
                padding: EdgeInsets.symmetric(vertical: 3.w),
                decoration: BoxDecoration(
                  borderRadius:BorderRadius.circular(15),
                  color: const Color(0xFFCE6A6B)
                ),
                child: Text(
                    txt,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color(0xFFFFFFFF),
                      fontSize: 18,
                      fontFamily: 'IstokWeb',
                    
                      )
                    
                ),
            ),
          );
}