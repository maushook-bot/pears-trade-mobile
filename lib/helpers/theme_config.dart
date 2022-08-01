import 'package:flutter/material.dart';
import 'package:pears_trade/pallete/hulk.dart';

ThemeData lightTheme = ThemeData.light();

ThemeData darkTheme = ThemeData.dark();

ThemeData dayTheme = ThemeData(
  textTheme: TextTheme(
    bodyText1: TextStyle(color: Hulk.kToDark),
    bodyText2: TextStyle(color: Hulk.kToDark),
  ),
  primaryColorLight: Hulk.kToDark,
  brightness: Brightness.light,
  cursorColor: Hulk.kToDark,
  fontFamily: 'Lato',
  primaryColor: Hulk.kToDark,
  accentColor: Hulk.kToDark,
  appBarTheme: AppBarTheme(
    backgroundColor: Hulk.kToDark,
  ),
  iconTheme: IconThemeData(
    color: Hulk.kToDark,
  ),
  textSelectionTheme: TextSelectionThemeData(
    cursorColor: Hulk.kToDark,
    selectionColor: Hulk.kToDark,
    selectionHandleColor: Hulk.kToDark,
  ),
    colorScheme: ColorScheme(
      background: Colors.white,
      onBackground: Colors.white,
      brightness: Brightness.light,
      primaryVariant: Hulk.kToDark,
      primary: Hulk.kToDark,
      secondaryVariant: Hulk.kToDark,
      secondary: Hulk.kToDark,
      surface: Colors.white,
      onSurface: Colors.white,
      error: Colors.red,
      onError: Colors.red,
      onPrimary: Colors.white,
      onSecondary: Hulk.kToDark,
    ),
);

ThemeData nightTheme = ThemeData(
  cursorColor: Hulk.kToDark,
  textSelectionTheme: TextSelectionThemeData(
    cursorColor: Hulk.kToDark,
    selectionColor: Hulk.kToDark,
    selectionHandleColor: Hulk.kToDark,
  ),
  fontFamily: 'Lato',
  brightness: Brightness.dark,
  scaffoldBackgroundColor: Colors.black,
  splashColor: Colors.black,
  backgroundColor: Colors.black,
  primaryColor: Hulk.kToDark,
  accentColor: Hulk.kToDark,
  cardColor: Hulk.kToDark.shade500,
  colorScheme: ColorScheme(
    background: Hulk.kToDark,
    onBackground: Colors.white,
    brightness: Brightness.dark,
    primaryVariant: Hulk.kToDark,
    primary: Hulk.kToDark,
    secondaryVariant: Hulk.kToDark,
    secondary: Hulk.kToDark,
    surface: Colors.white,
    onSurface: Colors.white,
    error: Colors.red,
    onError: Colors.red,
    onPrimary: Hulk.kToDark,
    onSecondary: Hulk.kToDark,
  ),
  canvasColor: Colors.black,
  iconTheme: IconThemeData(
    color: Hulk.kToDark,
  ),
  appBarTheme: AppBarTheme(
    backgroundColor: Hulk.kToDark,
  ),
);
