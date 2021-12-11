import 'package:flutter/material.dart';
import 'package:myroad/Views/homepage/home.dart';
import 'package:myroad/Views/profile/viewmodel/profilecontroller.dart';
import 'package:myroad/Views/widgets/buttonwidget.dart';
import 'package:provider/provider.dart';

class profil extends StatefulWidget {
  const profil({Key? key}) : super(key: key);

  @override
  _ProfilState createState() => _ProfilState();
}

class _ProfilState extends State<profil> {
  late ProfilController signincontroller;

  @override
  void initState() {
    signincontroller = Provider.of<ProfilController>(context, listen: false);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<ProfilController>(builder: (context, value, child) {
      return Scaffold(
        body: Container(
            child: TextButton(
                onPressed: () async {
                  await signincontroller.signout();
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return home();
                  }));
                },
                child: Text('Sign out'))),
      );
    });
  }
}
