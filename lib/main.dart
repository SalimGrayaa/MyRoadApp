import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:myroad/Views/homepage/home.dart';
import 'package:myroad/Views/loginPage/viewmodel/logincontroller.dart';
import 'package:myroad/Views/profile/viewmodel/profilecontroller.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import 'package:firebase_core/firebase_core.dart';
import 'Views/signup/viewermodel/registrationcontroller.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(Sizer(
    builder: (context, orientation, deviceType) {
      return MultiProvider(providers: [
        ChangeNotifierProvider(create: (_) => SignInController()),
        ChangeNotifierProvider(create: (_) => SignUpController()),
        ChangeNotifierProvider(create: (_) => ProfilController())
      ], child: MaterialApp(debugShowCheckedModeBanner: false, home: MyApp()));
    },
  ));
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return AnimatedSplashScreen(
        splashIconSize: 50.h,
        backgroundColor: const Color(0xFFE5E5E5),
        splash: Center(
          child: Image.asset('assets/logo.png', fit: BoxFit.cover),
        ),
        centered: true,
        nextScreen: home(),
      );
    });
  }
}
