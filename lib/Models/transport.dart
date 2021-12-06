import 'package:flutter/material.dart';


class Transport {
  String  title, price , distance , time;
  int id;
  List<IconData> transports ;
  Transport({
    required this.id,
    required this.title,
    required this.price,
    required this.time,
    required this.distance,
    required this.transports,
  });

  getTransportColor(IconData){
    const trans = [Icons.local_taxi , Icons.directions_bus , Icons.train ]; 
    const col = [Colors.yellow , Colors.red , Colors.blue]; 

    var c = trans.indexOf(IconData);
    
    return col[c] ;
  }
}


List<Transport> transportList = [
  Transport(
      id: 1,
      title: "Office",
      price: "234",
      time: "2",
      distance: "120.24",
      transports: [Icons.local_taxi ,Icons.train  , Icons.directions_bus],
     
  ),
  Transport(
      id: 1,
      title: "Office Code",
      price: "234",
      time: "15",
      distance: "99",
      transports: [Icons.train  , Icons.directions_bus],
  ),
  Transport(
      id: 1,
      title: "Office Code",
      price: "234",
      time: "12",
      distance: "54.3",
      transports: [Icons.train , Icons.local_taxi , Icons.directions_bus],
  ),
  Transport(
      id: 1,
      title: "Office Code",
      price: "234",
      time: "12",
      distance: "20.5",
      transports: [Icons.train , Icons.directions_bus, Icons.local_taxi],
  ),
];