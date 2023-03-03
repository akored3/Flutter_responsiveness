import 'package:flutter/material.dart';

class FlutterAirSideBarItemStyles {
  final double iconSize;
  final double labelSize;

  FlutterAirSideBarItemStyles(
      {required this.iconSize, required this.labelSize});
}

class FlutterAirSideBarItem {
  final IconData icon;
  final String label;

  FlutterAirSideBarItem({required this.icon, required this.label});
}
