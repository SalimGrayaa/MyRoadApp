import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:myroad/Services/geolocator_service.dart';

class ApplicationBloc with ChangeNotifier{
  final geolocatorService = GeolocatorService();

  late Position currentLocation;

  ApplicationBloc() {
    setCurrentLocation();
  }

  setCurrentLocation() async {
    currentLocation = await geolocatorService.getCurrentLocation();
    notifyListeners();
  }
}