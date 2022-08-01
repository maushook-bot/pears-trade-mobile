///hulk.dart
///Custom Colors => Primary Swatch

import 'package:flutter/material.dart';

class Hulk {
  static const MaterialColor kToDark = MaterialColor(
    0xff133436, // 0% comes in here, this will be color picked if no shade is selected when defining a Color property which doesn’t require a swatch.
    <int, Color>{
      50: Color(0xff597072), //10%
      100: Color(0xff425c5e), //20%
      200: Color(0xff425c5e), //30%
      300: Color(0xff2a484a), //40%
      400: Color(0xff2a484a), //50%
      500: Color(0xff2a484a), //60%
      600: Color(0xff133436), //70%
      700: Color(0xff112e30), //80%
      800: Color(0xff0f292b), //90%
      900: Color(0xff0d2425), //100%
    },
  );
}
