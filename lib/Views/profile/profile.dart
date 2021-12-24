import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import 'package:myroad/Views/Settings/settings.dart';
import 'package:myroad/Views/contact/contact.dart';
import 'package:myroad/Views/homepage/home.dart';
import 'package:myroad/Views/mainMapScreen/mainMapScreen.dart';
import 'package:myroad/Views/profile/profile_friend.dart';
import 'package:myroad/Views/profile/themes.dart';
import 'package:myroad/Views/profile/user_preferences.dart';
import 'package:myroad/Views/profile/viewmodel/profilecontroller.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

class profil extends StatefulWidget {
  const profil({Key? key}) : super(key: key);

  @override
  _ProfilState createState() => _ProfilState();
}

class _ProfilState extends State<profil> {
  late ProfilController signincontroller;
  final user = UserPreferences.myUser;
  File _imageFile = File('assets/profile.png');

  final ImagePicker _picker = ImagePicker();
  @override
  void initState() {
    signincontroller = Provider.of<ProfilController>(context, listen: false);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;
    final icon = CupertinoIcons.moon_stars;
    return Consumer<ProfilController>(builder: (context, value, child) {
      return Scaffold(
        // Generated code for this AppBar Widget...
        appBar: PreferredSize(
          preferredSize:
              Size.fromHeight(MediaQuery.of(context).size.height * 0.08),
          child: AppBar(
            backgroundColor: Color(0xFF104276),
            automaticallyImplyLeading: true,
            leading: IconButton(
              onPressed: () async {
                await signincontroller.signout();
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return MainMapScreen();
                }));
              },
              icon: Icon(
                Icons.arrow_back,
                color: Colors.white,
              ),
            ),
            flexibleSpace: Row(
              mainAxisSize: MainAxisSize.max,
            ),
            actions: [
              TextButton(
                child: Text("Settings"),
                style: TextButton.styleFrom(
                  primary: Colors.white,
                ),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => settingpage()));
                },
              ),
              TextButton(
                child: Text("Profile"),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => profil()));
                },
                style: TextButton.styleFrom(
                  primary: Colors.white,
                  elevation: 10,
                ),
              ),
              TextButton(
                child: Text("Log out"),
                onPressed: () async {
                  await signincontroller.signout();
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return home();
                  }));
                },
                style: TextButton.styleFrom(
                  primary: Colors.white,
                ),
              ),
              ThemeSwitcher(
                builder: (context) => IconButton(
                  icon: Icon(icon),
                  onPressed: () {
                    final theme =
                        isDarkMode ? MyThemes.lightTheme : MyThemes.darkTheme;

                    final switcher = ThemeSwitcher.of(context);
                    switcher.changeTheme(theme: theme);
                  },
                ),
              ),
            ],
          ),
        ),
        body: SafeArea(
          child: Column(mainAxisSize: MainAxisSize.max, children: [
            Container(
              width: 100.w,
              height: 25.h,
              decoration: BoxDecoration(
                  border: Border.all(width: 4, color: Colors.white),
                  boxShadow: [
                    BoxShadow(
                        spreadRadius: 2,
                        blurRadius: 10,
                        color: Colors.black.withOpacity(0.1))
                  ],
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: _imageFile == null
                        ? Image.asset('assets/profile.png') as ImageProvider
                        : FileImage(_imageFile),
                  )),
            ),
            Positioned(
              bottom: 20,
              right: 20,
              child: Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    width: 4,
                    color: Colors.white,
                  ),
                ),
                child: InkWell(
                  onTap: () {
                    showModalBottomSheet(
                      context: context,
                      builder: ((builder) => bottomSheet()),
                    );
                  },
                  child: Icon(
                    Icons.camera_alt,
                    color: Colors.teal,
                    size: 28.0,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(1, 0, 0, 0),
              child: Text(
                'Yassmine',
                style: TextStyle(
                  fontFamily: 'Montserrat',
                  color: Color(0xFF262323),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Text(
              'Studies at:Higher school\n of communication of tunis',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'Poppins',
                color: Color(0xFF145FA9),
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              'Birthday: 15/10/1999',
              style: TextStyle(
                fontFamily: 'Poppins',
                color: Color(0xFF1662AC),
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
            Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Contacts()));
                  },
                  child: Text('view contact '),
                  style: ElevatedButton.styleFrom(
                      primary: Colors.red, // background
                      onPrimary: Colors.white, // foreground
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)),
                      textStyle: TextStyle(
                        fontSize: 16,
                        fontStyle: FontStyle.italic,
                        fontFamily: "alex",
                      )),
                )),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
              child: Container(
                width: 300,
                height: 150,
                decoration: BoxDecoration(
                  color: Color(0xFFDBE1E1),
                  borderRadius: BorderRadius.circular(15),
                  shape: BoxShape.rectangle,
                ),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                  child: Row(mainAxisSize: MainAxisSize.max, children: [
                    Align(
                      alignment: AlignmentDirectional(0, -1),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(40, 0, 60, 0),
                        child: TextButton(
                          child: Text("Followors"),
                          onPressed: () {},
                          style: TextButton.styleFrom(
                            primary: Color(0xFF104983),
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(0, -1),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                        child: TextButton(
                          child: Text("Following"),
                          onPressed: () {},
                          style: TextButton.styleFrom(
                            primary: Color(0xFFEE6060),
                          ),
                        ),
                      ),
                    ),
                  ]),
                ),
              ),
            ),
            Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text('Invite freinds'),
                  style: ElevatedButton.styleFrom(
                      primary: Color(0xFF104276), // background
                      onPrimary: Colors.white, // foreground
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)),
                      textStyle: TextStyle(
                        fontSize: 16,
                        fontStyle: FontStyle.italic,
                        fontFamily: "alex",
                      )),
                )),
          ]),
        ),
      );
    });
  }

  Widget bottomSheet() {
    return Container(
      height: 100.0,
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 20,
      ),
      child: Column(
        children: <Widget>[
          Text(
            "Choose Profile photo",
            style: TextStyle(
              fontSize: 20.0,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
            TextButton.icon(
              icon: Icon(Icons.camera),
              onPressed: () {
                takePhoto();
              },
              label: Text("Camera"),
            ),
            TextButton.icon(
              icon: Icon(Icons.image),
              onPressed: () {
                takePhoto_gall();
              },
              label: Text("Gallery"),
            ),
          ])
        ],
      ),
    );
  }

  void takePhoto() async {
    // ignore: deprecated_member_use
    final pickedFile = await _picker.getImage(
      source: ImageSource.camera,
    );
    setState(() {
      if (pickedFile != null) {
        _imageFile = File(pickedFile.path);
      }
    });
  }

  void takePhoto_gall() async {
    // ignore: deprecated_member_use
    final pickedFile = await _picker.getImage(
      source: ImageSource.gallery,
    );
    setState(() {
      if (pickedFile != null) {
        _imageFile = File(pickedFile.path);
      }
    });
  }
}
