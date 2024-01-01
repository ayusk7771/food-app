import 'package:flutter/material.dart';
import 'package:ayush_s_application1/core/app_export.dart';
import 'package:ayush_s_application1/presentation/iphone_11_pro_max_ten_screen/models/iphone_11_pro_max_ten_model.dart';

/// A provider class for the Iphone11ProMaxTenScreen.
///
/// This provider manages the state of the Iphone11ProMaxTenScreen, including the
/// current iphone11ProMaxTenModelObj
class Iphone11ProMaxTenProvider extends ChangeNotifier {
  Iphone11ProMaxTenModel iphone11ProMaxTenModelObj = Iphone11ProMaxTenModel();

  @override
  void dispose() {
    super.dispose();
  }
}
