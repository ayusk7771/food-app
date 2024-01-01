import 'package:flutter/material.dart';
import 'package:ayush_s_application1/core/app_export.dart';
import 'package:ayush_s_application1/presentation/iphone_11_pro_max_three_page/models/iphone_11_pro_max_three_model.dart';
import '../models/productcard_item_model.dart';

/// A provider class for the Iphone11ProMaxThreePage.
///
/// This provider manages the state of the Iphone11ProMaxThreePage, including the
/// current iphone11ProMaxThreeModelObj

// ignore_for_file: must_be_immutable
class Iphone11ProMaxThreeProvider extends ChangeNotifier {
  Iphone11ProMaxThreeModel iphone11ProMaxThreeModelObj =
      Iphone11ProMaxThreeModel();

  @override
  void dispose() {
    super.dispose();
  }
}
