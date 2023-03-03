// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:flutter_air_responsive/helper_classes/air_appbarstyles.dart';
import 'package:flutter_air_responsive/utils/utils.dart';
import 'package:flutter_air_responsive/widgets/flutter_air_appheader_title.dart';

class FlutterAirAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => const Size.fromHeight(50);

  @override
  Widget build(BuildContext context) {
    FlutterAirAppBarStyles? appBarStyles =
        Utils.appbarStyles[Utils.getDeviceType(context)];

    return AppBar(
      backgroundColor: appBarStyles!.backgroundColor,
      elevation: 0,
      title: FlutterAirAppHeaderTitle(),
      leading: Builder(builder: (context) {
        return Material(
            color: appBarStyles.leadingIconBackGroundColor,
            child: InkWell(
              onTap: () {
                Scaffold.of(context).openDrawer();
              },
              child: Container(
                padding: const EdgeInsets.all(10),
                alignment: Alignment.center,
                child: Icon(Icons.menu,
                    color: appBarStyles.leadingIconForeGroundColor),
              ),
            ));
      }),
    );
  }
}
