import 'package:flutter/material.dart';
import 'package:ayush_s_application1/core/app_export.dart';
import 'package:ayush_s_application1/presentation/iphone_11_pro_max_seven_screen/models/iphone_11_pro_max_seven_model.dart';
import '../models/productcardlist_item_model.dart';

/// A provider class for the Iphone11ProMaxSevenScreen.
///
/// This provider manages the state of the Iphone11ProMaxSevenScreen, including the
/// current iphone11ProMaxSevenModelObj

// ignore_for_file: must_be_immutable
class Iphone11ProMaxSevenProvider extends ChangeNotifier {
  Iphone11ProMaxSevenModel iphone11ProMaxSevenModelObj =
      Iphone11ProMaxSevenModel();

  @override
  void dispose() {
    super.dispose();
  }
}
