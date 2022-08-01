import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:pears_trade/pallete/hulk.dart';
import 'package:pears_trade/screens/auth_screen.dart';
import 'package:pears_trade/figma/signup_screen.dart';
import 'package:pears_trade/screens/welcome.dart';

class LiquidWelcomeScreen extends StatefulWidget {
  static const routeName = '/LiquidWelcomeScreen';
  @override
  State<LiquidWelcomeScreen> createState() => _LiquidWelcomeScreenState();
}

class _LiquidWelcomeScreenState extends State<LiquidWelcomeScreen> {
  final pages = [
    Container(child: AuthScreen()),
    Container(child: Welcome()),
    //Container(child: SignupScreen()),

  ];

  @override
  Widget build(BuildContext context) {
    return LiquidSwipe(
      pages: pages,
      enableLoop: true,
      fullTransitionValue: 300,
      enableSlideIcon: true,
      waveType: WaveType.liquidReveal,
      positionSlideIcon: 0.5,
      slideIconWidget: Icon(
        EvaIcons.chevronLeft,
        color: Hulk.kToDark,
        size: 40,
      ),
    );
  }
}
