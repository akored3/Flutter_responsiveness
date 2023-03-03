import 'package:flutter/material.dart';
import 'package:flutter_air_responsive/constants.dart';
import 'package:google_fonts/google_fonts.dart';

final lightThemeData = ThemeData(
    brightness: Brightness.light,
    primaryColor: primaryColor,
    textTheme: GoogleFonts.redHatDisplayTextTheme(ThemeData.light().textTheme),
    colorScheme: ThemeData.light()
        .colorScheme
        .copyWith(secondary: secondaryColorLightTheme));

final darkThemeData = ThemeData(
    brightness: Brightness.dark,
    primaryColor: primaryColor,
    scaffoldBackgroundColor: bgColorDarkTheme,
    textTheme: GoogleFonts.redHatDisplayTextTheme(ThemeData.dark().textTheme),
    colorScheme: ThemeData.dark()
        .colorScheme
        .copyWith(secondary: secondaryColorDarkTheme));
