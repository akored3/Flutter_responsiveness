// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_air_responsive/widgets/flutter_air_sidebar.dart';
import 'package:flutter_air_responsive/widgets/flutterair_appbar.dart';
import 'package:flutter_air_responsive/widgets/flutterair_flight_info.dart';

class FlutterAirWelcome extends StatelessWidget {
  const FlutterAirWelcome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: const Drawer(),
        appBar: FlutterAirAppBar(),
        body: Row(children: [
          // ignore: prefer_const_constructors
          FlutterAirSideBar(),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(50),
              child: FlutterAirFlightInfo(),
            ),
          )
        ]));
  }
}
