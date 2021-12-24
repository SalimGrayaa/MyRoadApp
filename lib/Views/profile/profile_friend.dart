import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class profile_friend extends StatefulWidget {
  @override
  _profile_friend createState() => _profile_friend();
}

class _profile_friend extends State<profile_friend> {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize:
            Size.fromHeight(MediaQuery.of(context).size.height * 0.13),
        child: AppBar(
          backgroundColor: Color(0xFF104276),
          leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
          ),
          automaticallyImplyLeading: true,
          flexibleSpace: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(110, 50, 0, 0),
            child: TextButton(
              child: Text("Friend Profil"),
              style: TextButton.styleFrom(
                primary: Color(0x303030),
              ),
              onPressed: () {},
            ),
          ),
          actions: [],
          elevation: 4,
        ),
      ),
      body: SafeArea(
        child: Column(mainAxisSize: MainAxisSize.max, children: [
          Container(
            width: 130,
            height: 130,
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
                    image: NetworkImage(
                        'https://cdn.pixabay.com/photo/2018/01/13/19/39/fashion-3080644_960_720.jpg'))),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(10, 40, 0, 20),
            child: Text(
              'Yesmine Abdennadher',
              style: TextStyle(
                fontFamily: 'Montserrat',
                color: Color(0xFF262323),
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(10, 40, 0, 20),
            child: Text(
              'Yesmine Abdennadher',
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
                onPressed: () {},
                child: Text('Follow'),
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
        ]),
      ),
    );
  }
}
