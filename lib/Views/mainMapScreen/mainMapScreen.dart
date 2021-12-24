import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:myroad/Models/voyage.dart';
import 'package:myroad/Services/findTransport.dart';

import 'containers/inputContainer.dart';
import 'containers/mapContainer.dart';
import 'containers/transportsList.dart';

class MainMapScreen extends StatefulWidget {

  final String location , destination ;
  

  const MainMapScreen ({ Key? key, required this.location , required this.destination   }): super(key: key);

  @override
  _MainMapScreenState createState() => _MainMapScreenState();
}

class _MainMapScreenState extends State<MainMapScreen> {

  late TextEditingController yourLocationController ;
  late TextEditingController destinationController ;
  final scaffoldKey = GlobalKey<ScaffoldState>();
  late List<Voyage> transports ; 

  @override
  void initState() {
    super.initState();
    yourLocationController = TextEditingController(text: widget.location);;
    destinationController = TextEditingController(text: widget.destination);

    transports = getTransport(widget.location , widget.destination);
  }

  final _formKey = GlobalKey<FormState>();

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: scaffoldKey,
        backgroundColor: Color(0xFF4A919E),
        body: ListView(children: [
          InputContainer(formKey: _formKey, yourLocationController: yourLocationController, widget: widget, destinationController: destinationController),
          MapContainer(),
          TransportsList(transports: transports),
      ])
    );
  }
}
