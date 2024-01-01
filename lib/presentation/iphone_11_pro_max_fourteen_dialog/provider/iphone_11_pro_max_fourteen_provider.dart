import 'package:flutter/material.dart';
import 'package:ayush_s_application1/core/app_export.dart';
import 'package:ayush_s_application1/presentation/iphone_11_pro_max_fourteen_dialog/models/iphone_11_pro_max_fourteen_model.dart';

/// A provider class for the Iphone11ProMaxFourteenDialog.
///
/// This provider manages the state of the Iphone11ProMaxFourteenDialog, including the
/// current iphone11ProMaxFourteenModelObj
class Iphone11ProMaxFourteenProvider extends ChangeNotifier {
  Iphone11ProMaxFourteenModel iphone11ProMaxFourteenModelObj =
      Iphone11ProMaxFourteenModel();

  @override
  void dispose() {
    super.dispose();
  }
}
