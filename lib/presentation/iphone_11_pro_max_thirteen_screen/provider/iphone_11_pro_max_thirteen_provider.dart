import 'package:flutter/material.dart';
import 'package:ayush_s_application1/core/app_export.dart';
import 'package:ayush_s_application1/presentation/iphone_11_pro_max_thirteen_screen/models/iphone_11_pro_max_thirteen_model.dart';

/// A provider class for the Iphone11ProMaxThirteenScreen.
///
/// This provider manages the state of the Iphone11ProMaxThirteenScreen, including the
/// current iphone11ProMaxThirteenModelObj

// ignore_for_file: must_be_immutable
class Iphone11ProMaxThirteenProvider extends ChangeNotifier {
  TextEditingController mobileNoController = TextEditingController();

  Iphone11ProMaxThirteenModel iphone11ProMaxThirteenModelObj =
      Iphone11ProMaxThirteenModel();

  @override
  void dispose() {
    super.dispose();
    mobileNoController.dispose();
  }
}
