import 'package:flutter/material.dart';
import 'package:ayush_s_application1/core/app_export.dart';
import 'package:ayush_s_application1/presentation/iphone_11_pro_max_nine_screen/models/iphone_11_pro_max_nine_model.dart';

/// A provider class for the Iphone11ProMaxNineScreen.
///
/// This provider manages the state of the Iphone11ProMaxNineScreen, including the
/// current iphone11ProMaxNineModelObj

// ignore_for_file: must_be_immutable
class Iphone11ProMaxNineProvider extends ChangeNotifier {
  Iphone11ProMaxNineModel iphone11ProMaxNineModelObj =
      Iphone11ProMaxNineModel();

  String deliveryMethod = "";

  @override
  void dispose() {
    super.dispose();
  }

  void changeRadioButton1(String value) {
    deliveryMethod = value;
    notifyListeners();
  }
}
