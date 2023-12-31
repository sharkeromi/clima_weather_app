import 'package:flutter/material.dart';

const kTempTextStyle =
    TextStyle(fontFamily: 'Spartan MB', fontSize: 100.0, color: Colors.white);

const kTextFieldStyle = TextStyle(fontSize: 17.0, color: Colors.black87);

const kMessageTextStyle =
    TextStyle(fontFamily: 'Spartan MB', fontSize: 40.0, color: Colors.white);

const kButtonTextStyle =
    TextStyle(fontSize: 20.0, fontFamily: 'Spartan MB', color: Colors.white);

const kConditionTextStyle = TextStyle(fontSize: 100.0, color: Colors.white);

const kTextFieldInputDecoration = InputDecoration(
  filled: true,
  fillColor: Colors.white,
  icon: Icon(
    Icons.location_city,
    color: Colors.white,
  ),
  hintText: 'Enter City Name',
  hintStyle: TextStyle(
    color: Colors.grey,
  ),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(
      Radius.circular(10.0),
    ),
    borderSide: BorderSide.none,
  ),
);

ButtonStyle kTextButtonStyle() {
  return TextButton.styleFrom(
      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
      padding: EdgeInsets.zero,
      minimumSize: Size.zero,
      shape: const CircleBorder());
}
