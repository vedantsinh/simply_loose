import 'package:flutter/material.dart';


class DifferentScreens with ChangeNotifier {

  String screenName = "Dashboard";

  void setScreenName(String screenName) {
    this.screenName = screenName;
    notifyListeners();
    print(screenName + " Done");
  }

  String get getScreenName {
    return screenName;
  }

}
