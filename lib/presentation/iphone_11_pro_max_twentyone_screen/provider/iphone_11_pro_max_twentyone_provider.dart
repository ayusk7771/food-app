import 'package:flutter/material.dart';
import 'package:ayush_s_application1/core/app_export.dart';
import 'package:ayush_s_application1/presentation/iphone_11_pro_max_twentyone_screen/models/iphone_11_pro_max_twentyone_model.dart';

/// A provider class for the Iphone11ProMaxTwentyoneScreen.
///
/// This provider manages the state of the Iphone11ProMaxTwentyoneScreen, including the
/// current iphone11ProMaxTwentyoneModelObj

// ignore_for_file: must_be_immutable
class Iphone11ProMaxTwentyoneProvider extends ChangeNotifier {
  Iphone11ProMaxTwentyoneModel iphone11ProMaxTwentyoneModelObj =
      Iphone11ProMaxTwentyoneModel();

  @override
  void dispose() {
    super.dispose();
  }
}
