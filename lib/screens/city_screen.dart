
import 'package:clima_weather_app/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';


class CityChoiceScreen extends StatelessWidget {
  const CityChoiceScreen({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: const AssetImage('assets/city.jpeg'),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
                Colors.white.withOpacity(0.8), BlendMode.dstATop),
          ),
        ),
        constraints: const BoxConstraints.expand(),
        child: Column(
          children: [
            const SizedBox(
              height: 80,
            ),
            Container(
              height: 50,
              width: MediaQuery.of(context).size.width * 0.80,
              decoration: BoxDecoration(
                border: Border.all(
                    color: Colors.grey, width: 1, style: BorderStyle.solid),
                borderRadius: BorderRadius.circular(25),
                color: Colors.white,
              ),
              child: CustomTextField(),
            )
          ],
        ),
      ),
    );
  }
}

