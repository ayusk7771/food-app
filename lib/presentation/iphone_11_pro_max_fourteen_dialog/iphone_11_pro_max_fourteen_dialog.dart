import 'models/iphone_11_pro_max_fourteen_model.dart';
import 'package:ayush_s_application1/core/app_export.dart';
import 'package:ayush_s_application1/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'provider/iphone_11_pro_max_fourteen_provider.dart';

// ignore_for_file: must_be_immutable
class Iphone11ProMaxFourteenDialog extends StatefulWidget {
  const Iphone11ProMaxFourteenDialog({Key? key})
      : super(
          key: key,
        );

  @override
  Iphone11ProMaxFourteenDialogState createState() =>
      Iphone11ProMaxFourteenDialogState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Iphone11ProMaxFourteenProvider(),
      child: Iphone11ProMaxFourteenDialog(),
    );
  }
}

class Iphone11ProMaxFourteenDialogState
    extends State<Iphone11ProMaxFourteenDialog> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 315.h,
      decoration: AppDecoration.fillOnPrimary.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder30,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 315.h,
            padding: EdgeInsets.symmetric(
              horizontal: 46.h,
              vertical: 16.v,
            ),
            decoration: AppDecoration.fillGray20001.copyWith(
              borderRadius: BorderRadiusStyle.customBorderTL30,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 2.v),
                Text(
                  "lbl_please_note".tr,
                  style: CustomTextStyles.titleLargePoppins,
                ),
              ],
            ),
          ),
          SizedBox(height: 18.v),
          Opacity(
            opacity: 0.5,
            child: Padding(
              padding: EdgeInsets.only(left: 46.h),
              child: Text(
                "msg_delivery_to_mainland".tr.toUpperCase(),
                style: CustomTextStyles.bodyMediumPoppins,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 45.h),
            child: Text(
              "lbl_n1000_n2000".tr,
              style: CustomTextStyles.bodyLargePoppins,
            ),
          ),
          SizedBox(height: 17.v),
          Opacity(
            opacity: 0.5,
            child: Align(
              alignment: Alignment.center,
              child: Divider(
                color: appTheme.black900.withOpacity(0.53),
                indent: 45.h,
                endIndent: 30.h,
              ),
            ),
          ),
          SizedBox(height: 16.v),
          Opacity(
            opacity: 0.5,
            child: Padding(
              padding: EdgeInsets.only(left: 46.h),
              child: Text(
                "msg_delivery_to_island".tr.toUpperCase(),
                style: CustomTextStyles.bodyMediumPoppins,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 46.h),
            child: Text(
              "lbl_n2000_n3000".tr,
              style: CustomTextStyles.bodyLargePoppins,
            ),
          ),
          SizedBox(height: 34.v),
          Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: EdgeInsets.only(
                left: 46.h,
                right: 18.h,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Opacity(
                    opacity: 0.5,
                    child: Padding(
                      padding: EdgeInsets.only(
                        top: 16.v,
                        bottom: 17.v,
                      ),
                      child: Text(
                        "lbl_cancel".tr,
                        style: CustomTextStyles.titleMediumPoppinsBlack900,
                      ),
                    ),
                  ),
                  CustomElevatedButton(
                    height: 60.v,
                    width: 159.h,
                    text: "lbl_proceed".tr,
                    margin: EdgeInsets.only(left: 30.h),
                    buttonTextStyle:
                        CustomTextStyles.titleMediumPoppinsOnPrimary,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 17.v),
        ],
      ),
    );
  }
}
