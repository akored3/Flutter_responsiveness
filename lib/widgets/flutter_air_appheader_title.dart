import 'package:flutter/material.dart';
import 'package:flutter_air_responsive/helper_classes/air_appbarstyles.dart';
import 'package:flutter_air_responsive/utils/utils.dart';

class FlutterAirAppHeaderTitle extends StatelessWidget {
  const FlutterAirAppHeaderTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    FlutterAirAppBarStyles? appBarStyles =
        Utils.appbarStyles[Utils.getDeviceType(context)];
    return Row(
      children: [
        Container(
          width: 30,
          height: 30,
          decoration: BoxDecoration(
              color: Utils.secondaryThemeColor,
              borderRadius: BorderRadius.circular(20)),
          child: Icon(
            Icons.flight_takeoff,
            color: appBarStyles!.titleIconColor,
            size: 20,
          ),
        ),
        const SizedBox(width: 10),
        Text('Welcome',
            style: TextStyle(
              fontSize: 18,
              color: appBarStyles.titleColor,
            ))
      ],
    );
  }
}
