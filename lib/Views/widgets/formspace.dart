import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget formspace (String txt){
  return TextFormField(
                style: const TextStyle(
                fontSize: 18,
                ),
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    hintText:txt,
                     contentPadding: const EdgeInsets.only(
                      left: 14.0, bottom: 8.0, top: 8.0),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.blue),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    
                  ),
                    
                    ),
                    onChanged: (val){
                  
                    },
              );
}