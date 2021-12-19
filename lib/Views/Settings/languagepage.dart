import 'package:flutter/material.dart';
import 'package:get/get.dart';
class languagepage extends StatelessWidget {
  const languagepage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
  body: SingleChildScrollView(
    child: Container(
      height: 2000.0,
      color: const Color (0xFFE5E5E5),
      child: Column(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                alignment: Alignment(-1.00,0.00),
                child: Text(
                  'App language'.tr ,
                  style: TextStyle(
                            color:Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 30.0,
                          ),
                  ),
                padding: EdgeInsets.all(70.0),
                margin: EdgeInsets.only(bottom: 80.0),
                
                height:250.0,
                decoration: BoxDecoration(
                  color:const Color (0xFF4A919E), 
                ),//BoxDecoration
              ),
              Card(
                
                    margin: EdgeInsets.symmetric(vertical: 150.0, horizontal: 40.0),

                  
               // margin: const EdgeInsets.only(top: 100.0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25.0),
                ),
                color: Colors.white,
                elevation: 0,
              
                child: Column(
                  children: <Widget>[
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.white,
                        onSurface: Colors.white,

                      ),
                      onPressed: () {
                        var locale= Locale('fr','FR');
                        Get.updateLocale(locale);
                              

                      }, 
                      child:ListTile(
                      title: Text(
                        "French".tr ,
                        style: TextStyle(
                          color: const Color(0xFF212E53),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                     ),
                    Divider(
                      height: 0,
                      color: const Color(0xFFE5E5E5),
                    ),
                     
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                        primary: Colors.white,
                      ),
                      onPressed: () {
                        var locale= Locale('ar','ARB');
                        Get.updateLocale(locale);
                      }, 
                      child:ListTile(
                      title: Text(
                        "Arabic".tr ,
                        style: TextStyle(
                          color: const Color(0xFF212E53),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                     ),
                    Divider(
                      height: 0,
                      color: const Color(0xFFE5E5E5),
                    ),
                     ElevatedButton(
                       style: ElevatedButton.styleFrom(
                        primary: Colors.white,
                      ),
                      onPressed: () {
                        var locale= Locale('en','US');
                        Get.updateLocale(locale);
                      }, 
                      child:
                    ListTile(
                      title: Text(
                        "English".tr ,
                        style: TextStyle(
                          color: const Color(0xFF212E53),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                     ),
                    Divider(
                      height: 0,
                      color: const Color(0xFFE5E5E5),
                    ),
                     ElevatedButton(
                       style: ElevatedButton.styleFrom(
                        primary: Colors.white,
                      ),
                      onPressed: () {
                        var locale= Locale('kr','KR');
                        Get.updateLocale(locale);
                      }, 
                      child:
                    ListTile(
                      title: Text(
                        "Korean".tr ,
                        style: TextStyle(
                          color: const Color(0xFF212E53),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                     ),
                  ],
                ),
              ),
            ], 
          ),
        ],
      ),
    ),
  ),
);
      
    
  }
}