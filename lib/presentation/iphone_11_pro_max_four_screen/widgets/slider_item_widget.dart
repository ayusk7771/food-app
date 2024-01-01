import '../models/slider_item_model.dart';
import 'package:ayush_s_application1/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SliderItemWidget extends StatelessWidget {
  SliderItemWidget(
    this.sliderItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  SliderItemModel sliderItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: CustomImageView(
        imagePath: ImageConstant.imgImage2241x241,
        height: 241.adaptSize,
        width: 241.adaptSize,
        radius: BorderRadius.circular(
          120.h,
        ),
      ),
    );
  }
}
