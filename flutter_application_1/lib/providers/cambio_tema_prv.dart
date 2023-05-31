import 'package:flutter/widgets.dart';

class Changetheme with ChangeNotifier{
  bool _isdarktheme = false;

  bool get isdarktheme => _isdarktheme;
  set isdarktheme (bool _) {
    _isdarktheme = _;
    notifyListeners();
  }
}