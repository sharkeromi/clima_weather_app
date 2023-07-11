import 'dart:developer';

import 'package:clima_weather_app/controller/weather_controller.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';

class Location {
  double? latitude;
  double? longitude;

  Future<void> getCurrentLocation() async {
    try {
      Position position =
          await Get.find<WeatherController>().determinePosition();
      log('1');
      log(position.toString());
      log('2');
      latitude = position.latitude;
      longitude = position.longitude;
    } catch (e) {
      print(e);
    }
  }
}
