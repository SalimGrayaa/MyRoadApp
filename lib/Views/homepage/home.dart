import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myroad/Views/loginPage/login.dart';
import 'package:myroad/Views/signup/signup.dart';
import 'package:myroad/Views/widgets/buttonwidget.dart';
import 'package:sizer/sizer.dart';

class home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE5E5E5),
      body: Column(
        children: <Widget>[
          Center(
              child: Container(
                  margin: EdgeInsets.fromLTRB(0, 15.h, 0, 8.h),
                  child: Image.asset(
                    'assets/logo.png',
                  ))),
          const SizedBox(height: 20.0),
          Container(
            width: 80.w,
            padding: EdgeInsets.symmetric(vertical: 0.3.w),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: const Color(0xFFCE6A6B)),
            child: TextButton(
                onPressed: () async {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return signup();
                  }));
                },
                child: const Text(
                  'Sign UP',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color(0xFFFFFFFF),
                    fontSize: 18,
                    fontFamily: 'IstokWeb',
                  ),
                )),
          ),
          const SizedBox(height: 20.0),
          Container(
            width: 80.w,
            padding: EdgeInsets.symmetric(vertical: 0.3.w),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: const Color(0xFFCE6A6B)),
            child: TextButton(
                onPressed: () async {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return SignIn();
                  }));
                },
                child: const Text(
                  'Log In',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color(0xFFFFFFFF),
                    fontSize: 18,
                    fontFamily: 'IstokWeb',
                  ),
                )),
          ),
        ],
      ),
    );
  }
}
