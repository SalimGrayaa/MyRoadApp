import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

import '../homepage/home.dart';
import '../profile/viewmodel/profilecontroller.dart';
import 'languagepage.dart';

class settingpage extends StatelessWidget {
  settingpage({ Key? key }) : super(key: key);
  
  late ProfilController signincontroller;
  @override
  Widget build(BuildContext context) {
    return Consumer<ProfilController>(builder: (context, value, child) { 
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
                      'Settings'.tr,
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
                    ),
                  ),
                  Card(
                    
                        margin: EdgeInsets.symmetric(vertical: 150.0, horizontal: 40.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                    color: Colors.white,
                    elevation: 0,
                  
                    child: Column(
                      children: <Widget>[
                        InkWell(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)
                              {
                              return languagepage();
                              }
                            ));
                          },
                          child: ListTile(
                            title: Text(
                              "App language".tr,
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
                       //InkWell(
                          //onTap: (){
                          //  Navigator.push(context, MaterialPageRoute(builder: (context)
                             // {
                            //  return OfflineMapsSettingsPage();
                           //   }
                            //));
                          //},
                          //child:
                          ListTile(
                            title: Text(
                              "Offline maps settings".tr,
                              style: TextStyle(
                                color: const Color(0xFF212E53),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                      // ),
                        Divider(
                          height: 0,
                          color: const Color(0xFFE5E5E5),
                        ),
                        //InkWell(
                          //onTap: (){
                          //  Navigator.push(context, MaterialPageRoute(builder: (context)
                             // {
                            //  return DistanceUnits();
                           //   }
                            //));
                          //},
                          //child:
                        ListTile(
                          title: Text(
                            "Distance units".tr,
                            style: TextStyle(
                              color: const Color(0xFF212E53),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Divider(
                          height: 0,
                          color: const Color(0xFFE5E5E5),
                        ),
                        //InkWell(
                          //onTap: (){
                          //  Navigator.push(context, MaterialPageRoute(builder: (context)
                             // {
                            //  return Location();
                           //   }
                            //));
                          //},
                          //child:
                        ListTile(
                          title: Text(
                            "Location".tr,
                            style: TextStyle(
                              color: const Color(0xFF212E53),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        //),
                      ],
                    ),
                  ),
                ], 
              ),
        
              //InkWell(
                          //onTap: (){
                          //  Navigator.push(context, MaterialPageRoute(builder: (context)
                             // {
                            //  return LoginPage();
                           //   }
                            //));
                          //},
                          //child:
              new MaterialButton( 
                shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(100.0)),
                height: 55.0, 
                minWidth: 327.0, 
                textColor: Colors.white, 
                color: Color (0xFFCE6A6B),
                onPressed: () async {
                  await signincontroller.signout();
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return home();
                  }));
                },
                child: new Text("Log out".tr),      
              ),
            ],
          ),
        ),
  ),
);
      }
    );
  }
}