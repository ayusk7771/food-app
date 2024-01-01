import 'package:flutter/material.dart';
import 'package:ayush_s_application1/core/app_export.dart';
import 'package:ayush_s_application1/presentation/iphone_11_pro_max_eight_screen/models/iphone_11_pro_max_eight_model.dart';

/// A provider class for the Iphone11ProMaxEightScreen.
///
/// This provider manages the state of the Iphone11ProMaxEightScreen, including the
/// current iphone11ProMaxEightModelObj

// ignore_for_file: must_be_immutable
class Iphone11ProMaxEightProvider extends ChangeNotifier {
  TextEditingController marvisKparobovalueController = TextEditingController();

  Iphone11ProMaxEightModel iphone11ProMaxEightModelObj =
      Iphone11ProMaxEightModel();

  String deliveryMethod = "";

  @override
  void dispose() {
    super.dispose();
    marvisKparobovalueController.dispose();
  }

  void changeRadioButton1(String value) {
    deliveryMethod = value;
    notifyListeners();
  }
}
