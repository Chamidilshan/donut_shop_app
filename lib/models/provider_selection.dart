import 'package:donut_shop_app/constants/utils.dart';
import 'package:flutter/material.dart';

class DonutBottomBarSelectionService extends ChangeNotifier{

  String? tabSelection = 'main';

  void setTabSelection(String selection){
    Utils.mainListNav.currentState!.pushReplacementNamed('/' + selection);
    tabSelection = selection;
    notifyListeners();
  }
}