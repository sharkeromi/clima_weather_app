import 'package:clima_weather_app/constants/style.dart';
import 'package:clima_weather_app/controller/weather_controller.dart';
import 'package:clima_weather_app/screens/city_screen.dart';
import 'package:clima_weather_app/services/weather.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class IconButtonWidget extends StatelessWidget {
  final String buttonType;
  final WeatherController weatherController = Get.find<WeatherController>();

  IconButtonWidget({super.key, required this.buttonType});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: TextButton(
        style: kTextButtonStyle(),
        onPressed: () async {
          if (buttonType == "location") {
            var weatherData = await WeatherModel().getLocationWeather();
            weatherController.getWeatherData(weatherData);
          } else {
            Get.to(() =>  const CityChoiceScreen());
          }
        },
        child: buttonType == "location"
            ? const Icon(
                Icons.near_me,
                color: Colors.white,
                size: 50.0,
              )
            : const Icon(
                Icons.location_city,
                color: Colors.white,
                size: 50.0,
              ),
      ),
    );
  }
}
