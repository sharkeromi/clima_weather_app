import 'package:clima_weather_app/constants/style.dart';
import 'package:flutter/material.dart';

class IconButtonWidget extends StatelessWidget {
  String buttonType;

  IconButtonWidget({super.key, required this.buttonType});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: TextButton(
        style: kTextButtonStyle(),
        onPressed: () {},
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
