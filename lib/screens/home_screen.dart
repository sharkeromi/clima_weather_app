import 'package:clima_weather_app/constants/style.dart';
import 'package:clima_weather_app/controller/weather_controller.dart';
import 'package:clima_weather_app/widgets/IconButton.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final WeatherController weatherController = Get.find<WeatherController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: const AssetImage('assets/background.jpeg'),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
                Colors.white.withOpacity(0.8), BlendMode.dstATop),
          ),
        ),
        constraints: const BoxConstraints.expand(),
        child: SafeArea(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButtonWidget(
                    buttonType: 'location',
                  ),
                  IconButtonWidget(
                    buttonType: 'city',
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: Row(
                  children: [
                    Obx(() => Text(
                          '${weatherController.temperature.value.toInt()}°',
                          style: kTempTextStyle,
                        )),
                    Image.network(
                      "https://${weatherController.weatherIcon.value.substring(2)}",
                      scale: 0.45,
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 16.0, top: 30, bottom: 10),
                    child: Text(
                      weatherController.weatherMessage.value,
                      style: kButtonTextStyle,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16),
                child: Obx(
                  () => Row(
                    children: [
                      const Icon(
                        Icons.location_on,
                        color: Colors.white,
                        size: 20,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        weatherController.cityName.value,
                        style: kButtonTextStyle,
                      )
                    ],
                  ),
                ),
              ),
              const Spacer(),
              Padding(
                padding:
                    const EdgeInsets.only(right: 16.0, left: 16, bottom: 150),
                child: Obx(
                  () => Text(
                    weatherController.message.value,
                    textAlign: TextAlign.right,
                    style: kMessageTextStyle,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
