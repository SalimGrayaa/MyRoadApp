import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'Salim Grayaa/home.dart';



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
    return home();
  }
}
