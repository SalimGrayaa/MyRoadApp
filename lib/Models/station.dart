import 'package:google_maps_flutter/google_maps_flutter.dart';


class Station {
  int id;
  String  nom ;
  LatLng cord_station ;
  Station({
    required this.id,
    required this.nom,
    required this.cord_station,
  });

}

List<Station> listStaion = [
  Station(
    id: 0 , 
    nom: "supcom" , 
    cord_station:LatLng(36.8890956,10.1826217) 
  ),
  Station(
    id: 1 , 
    nom: "enit" , 
    cord_station:LatLng(36.8309689,10.1452353)
  ),
  Station(
    id: 2 , 
    nom: "ensi" , 
    cord_station:LatLng(36.8127146,10.0588199) 
  ),

];
