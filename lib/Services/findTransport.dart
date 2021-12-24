import 'package:myroad/Models/station.dart';
import 'package:myroad/Models/voyage.dart';

getTransport(location , destination){
  var transports = transportList ;
  return transports.where((e) => e.point_depart.nom == location && e.point_arrive.nom == destination).toList();
}

findStaionByNom(nom){
    return listStaion.where((e) => e.nom == nom ).toList();
}