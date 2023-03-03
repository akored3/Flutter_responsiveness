import 'package:flutter/material.dart';
import 'package:flutter_air_responsive/helper_classes/air_appbarstyles.dart';
import 'package:flutter_air_responsive/helper_classes/air_flightinfo_styles.dart';
import 'package:flutter_air_responsive/helper_classes/air_sidebar_itemstyles.dart';

enum DeviceType {
  mobile,
  tablet,
  laptop,
}

class Utils {
  static const int mobileMaxWidth = 480;
  static const int tabletMaxWidth = 768;
  static const int laptopMaxWidth = 1024;

  static const int twoColumnLayoutWidth = 600;

  static const Color mainThemeColor = Color(0xFF5C1896);
  static const Color secondaryThemeColor = Color(0xFFA677FF);
  static const Color darkThemeColor = Color(0xFF44146E);
  static const Color normalLabelColor = Color(0xFF6C6C6C);
  static const Color lightPurpleColor = Color(0xFFC5ABF6);

  //step #2 add the sidebarItemStyles map
  static Map<DeviceType, FlutterAirSideBarItemStyles> sidebarItemStyles = {
    DeviceType.mobile: FlutterAirSideBarItemStyles(iconSize: 30, labelSize: 15),
    DeviceType.tablet: FlutterAirSideBarItemStyles(iconSize: 30, labelSize: 15),
    DeviceType.laptop: FlutterAirSideBarItemStyles(iconSize: 25, labelSize: 15),
  };

  //step #3 add the appbarStyles map
  static Map<DeviceType, FlutterAirAppBarStyles> appbarStyles = {
    DeviceType.mobile: FlutterAirAppBarStyles(
      leadingIconBackGroundColor: Colors.transparent,
      leadingIconForeGroundColor: Utils.mainThemeColor,
      backgroundColor: Colors.transparent,
      titleColor: Utils.mainThemeColor,
      titleIconColor: Colors.white,
    ),
    DeviceType.tablet: FlutterAirAppBarStyles(
      leadingIconBackGroundColor: Utils.darkThemeColor,
      leadingIconForeGroundColor: Colors.white,
      backgroundColor: Utils.mainThemeColor,
      titleColor: Colors.white,
      titleIconColor: Utils.mainThemeColor,
    ),
    DeviceType.laptop: FlutterAirAppBarStyles(
      leadingIconBackGroundColor: Utils.darkThemeColor,
      leadingIconForeGroundColor: Colors.white,
      backgroundColor: Utils.mainThemeColor,
      titleColor: Colors.white,
      titleIconColor: Utils.mainThemeColor,
    ),
  };

  //add FlightInfoStyle map

  static Map<DeviceType, FlutterAirFlightInfoStyles> flightInfoStyles = {
    DeviceType.mobile: FlutterAirFlightInfoStyles(
        labelSize: 15,
        primaryValueSize: 60,
        secondaryValueSize: 40,
        tertiaryValueSize: 30,
        flightIconSize: 50,
        seatBadgePaddingSize: 15,
        seatBadgeIconSize: 25,
        seatBadgetLabelSize: 25,
        flightLineSize: 3,
        flightLineEndRadiusSize: 10,
        secondaryIconSize: 30),
    DeviceType.tablet: FlutterAirFlightInfoStyles(
      labelSize: 20,
      primaryValueSize: 60,
      secondaryValueSize: 50,
      tertiaryValueSize: 30,
      flightIconSize: 60,
      seatBadgePaddingSize: 20,
      seatBadgeIconSize: 30,
      seatBadgetLabelSize: 30,
      flightLineSize: 4,
      flightLineEndRadiusSize: 15,
      secondaryIconSize: 30,
    ),
    DeviceType.laptop: FlutterAirFlightInfoStyles(
        labelSize: 20,
        primaryValueSize: 70,
        secondaryValueSize: 60,
        tertiaryValueSize: 40,
        flightIconSize: 60,
        seatBadgePaddingSize: 30,
        seatBadgeIconSize: 35,
        seatBadgetLabelSize: 35,
        flightLineSize: 4,
        flightLineEndRadiusSize: 15,
        secondaryIconSize: 30)
  };

  //Method to get device type
  static DeviceType getDeviceType(BuildContext context) {
    MediaQueryData data = MediaQuery.of(context);
    DeviceType bk = DeviceType.mobile;

    if (data.size.width > Utils.mobileMaxWidth &&
        data.size.width <= Utils.tabletMaxWidth) {
      bk = DeviceType.tablet;
    } else if (data.size.width > Utils.tabletMaxWidth) {
      bk = DeviceType.laptop;
    }
    return bk;
  }

  static List<FlutterAirSideBarItem> sideBarItems = [
    FlutterAirSideBarItem(icon: Icons.home, label: 'Home'),
    FlutterAirSideBarItem(icon: Icons.face, label: 'Passenger'),
    FlutterAirSideBarItem(icon: Icons.airplane_ticket, label: 'Flight Info'),
    FlutterAirSideBarItem(
        icon: Icons.airline_seat_recline_normal, label: 'Reserve Seat')
  ];
}
