import 'package:clima_weather_app/controller/weather_controller.dart';
import 'package:clima_weather_app/screens/home_screen.dart';
import 'package:clima_weather_app/services/weather.dart';
import 'package:get/get.dart';

class SplashScreenController extends GetxController {
  @override
  void onInit() async {
    await navigateToHome();
    super.onInit();
  }

  navigateToHome() async {
    var weatherData = await WeatherModel().getLocationWeather();
    print(weatherData.toString());
    WeatherController weatherController = Get.find<WeatherController>();
    weatherController.getWeatherData(weatherData);
    await Future.delayed(const Duration(seconds: 3), () {});
    Get.offAll(() => HomeScreen());
  }
}
