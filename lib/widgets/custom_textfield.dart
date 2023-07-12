import 'package:clima_weather_app/constants/style.dart';
import 'package:clima_weather_app/controller/weather_controller.dart';
import 'package:clima_weather_app/services/weather.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomTextField extends StatelessWidget {
   CustomTextField({
    super.key,
  });

  final WeatherController weatherController = Get.find<WeatherController>();

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      textAlignVertical: TextAlignVertical.center,
      controller: weatherController.searchCity,
      decoration: const InputDecoration(
        contentPadding: EdgeInsets.fromLTRB(12, 10, 10, 12),
        hintStyle: kTextFieldStyle,
        hintText: "Search your City",
        border: InputBorder.none,
        fillColor: Colors.black,
        prefixIcon: Icon(Icons.search),
      ),
      onFieldSubmitted: (value) async {
        var weatherData = await WeatherModel().getCityWeather(value);
        weatherController.getWeatherData(weatherData);
        Get.back();
      },
    );
  }
}
