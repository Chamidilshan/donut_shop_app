import 'package:flutter/material.dart';

class DonutBottomBarSelectionService extends ChangeNotifier{

  String? tabSelection = 'main';

  void setTabSelection(String selection){
    tabSelection = selection;
    notifyListeners();
  }
}