import 'package:flutter/material.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:injectable/injectable.dart';
import 'package:weather_orkester_app/application/injection.dart';

@singleton
class LocalisationService {
  late Position? currentPosition;

  @factoryMethod
  static LocalisationService inject() {
    return LocalisationService();
  }

  static LocalisationService injected() => getIt<LocalisationService>(); 

  Future<Placemark?> findCityNameFromPosition() async {
    if (currentPosition == null) {
      return null;
    }
    final List<Placemark> placemarks = await placemarkFromCoordinates(currentPosition!.latitude, currentPosition!.longitude);
    return placemarks[0];
  }

  Future<bool> handleLocationPermission(context) async {
    bool serviceEnabled;
    LocationPermission permission;

    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      return false;
    }
    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        return false;
      }
    }
    if (permission == LocationPermission.deniedForever) {
      return false;
    }
    return true;
  }


  Future<bool> getCurrentPosition(context) async {
    final hasPermission = await handleLocationPermission(context);

    if (!hasPermission) {
      return false;
    }
    await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high)
        .then((Position position) {
        currentPosition = position;
    }).catchError((e) {
      debugPrint(e.toString());
    });
    return currentPosition != null ? true : false;
  }

}