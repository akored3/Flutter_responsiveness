// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:flutter_air_responsive/screens/air_screen.dart';
import 'package:flutter_air_responsive/theme_modes/themes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: lightThemeData,
      darkTheme: darkThemeData,
      home: FlutterAirWelcome(),
    );
  }
}
