import 'package:clima_weather_app/controller/weather_controller.dart';
import 'package:get/get.dart';

class InitialBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => WeatherController());
  }
}
