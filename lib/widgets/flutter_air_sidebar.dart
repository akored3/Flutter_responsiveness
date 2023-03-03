import 'package:flutter/material.dart';
import 'package:flutter_air_responsive/constants.dart';
import 'package:flutter_air_responsive/helper_classes/air_sidebar_itemstyles.dart';
import 'package:flutter_air_responsive/utils/utils.dart';

class FlutterAirSideBar extends StatelessWidget {
  const FlutterAirSideBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MediaQueryData data = MediaQuery.of(context);
    DeviceType deviceType = Utils.getDeviceType(context);
    FlutterAirSideBarItemStyles sideBarItemStyles =
        Utils.sidebarItemStyles[deviceType] as FlutterAirSideBarItemStyles;
    return Visibility(
      visible: data.size.width > Utils.mobileMaxWidth,
      child: Material(
        color: purpleColor,
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: List.generate(
                      Utils.sideBarItems.length,
                      (index) => Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              IconButton(
                                  color: secondaryThemeColor,
                                  onPressed: () {},
                                  icon: Icon(
                                    Utils.sideBarItems[index].icon,
                                    color: Colors.white,
                                    size: sideBarItemStyles.iconSize,
                                  )),
                              Visibility(
                                visible: data.size.width > Utils.tabletMaxWidth,
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 10, top: 10, right: 20, bottom: 10),
                                  child: Text(
                                    Utils.sideBarItems[index].label,
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: sideBarItemStyles.labelSize),
                                  ),
                                ),
                              ),
                            ],
                          )),
                ),
              ),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
