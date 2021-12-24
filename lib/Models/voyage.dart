import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:myroad/Models/station.dart';
import 'package:myroad/Services/findTransport.dart';

class Voyage {
  String  title, prix_voyage , distance , temps_voyage ;
  int id;
  List<IconData> transports ;
  Station point_depart , point_arrive ;
  Voyage({
    required this.id,
    required this.title,
    required this.prix_voyage,
    required this.temps_voyage,
    required this.distance,
    required this.transports,
    required this.point_depart,
    required this.point_arrive,
  });

  getTransportColor(IconData){
    const trans = [Icons.local_taxi , Icons.directions_bus , Icons.train ]; 
    const col = [Colors.yellow , Colors.red , Colors.blue]; 

    var c = trans.indexOf(IconData);
    
    return col[c] ;
  }
}


List<Voyage> transportList = [
  Voyage(
      id: 1,
      title: "recommanded for you",
      prix_voyage: "234",
      temps_voyage: "2",
      distance: "120.24",
      transports: [Icons.local_taxi ,Icons.train  , Icons.directions_bus],
      point_depart: findStaionByNom("supcom")[0],
      point_arrive: findStaionByNom("enit")[0],
     
  ),
  Voyage(
      id: 1,
      title: "cheapest choice ",
      prix_voyage: "234",
      temps_voyage: "15",
      distance: "99",
      transports: [Icons.train  , Icons.directions_bus],
      point_depart: findStaionByNom("supcom")[0],
      point_arrive: findStaionByNom("enit")[0],
  ),
  Voyage(
      id: 1,
      title: "",
      prix_voyage: "8.250",
      temps_voyage: "20 min",
      distance: "99",
      transports: [Icons.local_taxi],
      point_depart: findStaionByNom("supcom")[0],
      point_arrive: findStaionByNom("enit")[0],
  ),
  Voyage(
      id: 1,
      title: "fastest choice",
      prix_voyage: "234",
      temps_voyage: "12",
      distance: "54.3",
      transports: [Icons.train , Icons.local_taxi , Icons.directions_bus],
      point_depart: findStaionByNom("supcom")[0],
      point_arrive: findStaionByNom("ensi")[0],
  ),
  Voyage(
      id: 1,
      title: "recomanded for you",
      prix_voyage: "234",
      temps_voyage: "12",
      distance: "20.5",
      transports: [Icons.train , Icons.directions_bus, Icons.local_taxi],
      point_depart: findStaionByNom("supcom")[0],
      point_arrive: findStaionByNom("ensi")[0],
  ),
];