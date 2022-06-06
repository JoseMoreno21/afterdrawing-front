import 'package:flutter/material.dart';

class Utils {
  static GlobalKey<NavigatorState> mainNavigator = GlobalKey<NavigatorState>();
  static GlobalKey<NavigatorState> homeNavigator = GlobalKey<NavigatorState>();

  /*Widget loader(screenWidth, screenHeight) {
    return Container(
      width: screenWidth,
      height: screenHeight,
      color: Colors.white.withOpacity(0.9),
      child: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }*/
}
