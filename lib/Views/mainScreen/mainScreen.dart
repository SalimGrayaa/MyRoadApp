import 'package:flutter/material.dart';
import 'containers/infoContainer.dart';
import 'containers/inputContainer.dart';


class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  late TextEditingController yourLocationController;
  late TextEditingController destinationController;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    yourLocationController = TextEditingController();
    destinationController = TextEditingController();
  }

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Color(0xFF4A919E),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              'assets/image-1.png',
              width: MediaQuery.of(context).size.width,
              height: 350,
              fit: BoxFit.cover,
            ),
            InputContainer(formKey: _formKey, yourLocationController: yourLocationController, destinationController: destinationController),
            InfoContainer(),
          ],
        ),
      ),
    );
  }
}
