import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:myroad/App_Bloc/application_bloc.dart';
import 'package:myroad/Views/mainMapScreen/mainMapScreen.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import 'Views/homepage/home.dart';




void main() {
  runApp(Sizer(
         builder: (context, orientation, deviceType) {
         return /*ChangeNotifierProvider(
        //     create : (context) => ApplicationBloc(),
        //     child:*/ const MaterialApp(
            debugShowCheckedModeBanner: false,
            home: MyApp() 
          //),
        );
      },
  ));
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splashIconSize:50.h,
      backgroundColor: const Color(0xFFE5E5E5),
      splash: Center(
        child: Image.asset('assets/logo.png',
        fit:BoxFit.cover
        ),
      ),
      centered: true,
      
      nextScreen: home(),
      
    );
  }
}
