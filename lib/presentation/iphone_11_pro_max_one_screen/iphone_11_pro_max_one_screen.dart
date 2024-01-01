import 'models/iphone_11_pro_max_one_model.dart';
import 'package:ayush_s_application1/core/app_export.dart';
import 'package:ayush_s_application1/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'provider/iphone_11_pro_max_one_provider.dart';

class Iphone11ProMaxOneScreen extends StatefulWidget {
  const Iphone11ProMaxOneScreen({Key? key}) : super(key: key);

  @override
  Iphone11ProMaxOneScreenState createState() => Iphone11ProMaxOneScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => Iphone11ProMaxOneProvider(),
        child: Iphone11ProMaxOneScreen());
  }
}

class Iphone11ProMaxOneScreenState extends State<Iphone11ProMaxOneScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(milliseconds: 3000), () {
      NavigatorService.popAndPushNamed(
        AppRoutes.iphone11ProMaxTwoScreen,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.red500,
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(vertical: 36.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 20.v),
                      Container(
                          height: 73.adaptSize,
                          width: 73.adaptSize,
                          margin: EdgeInsets.only(left: 49.h),
                          padding: EdgeInsets.symmetric(
                              horizontal: 13.h, vertical: 11.v),
                          decoration: AppDecoration.fillOnPrimary.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder36),
                          child: CustomImageView(
                              imagePath: ImageConstant.imgGroup3,
                              height: 49.v,
                              width: 45.h,
                              alignment: Alignment.center)),
                      SizedBox(height: 19.v),
                      Container(
                          width: 275.h,
                          margin: EdgeInsets.only(left: 49.h),
                          child: Text("msg_food_for_everyone".tr,
                              maxLines: 3,
                              overflow: TextOverflow.ellipsis,
                              style: theme.textTheme.displayLarge)),
                      SizedBox(height: 51.v),
                      SizedBox(
                          height: 513.v,
                          width: double.maxFinite,
                          child: Stack(
                              alignment: Alignment.bottomRight,
                              children: [
                                CustomImageView(
                                    imagePath:
                                        ImageConstant.imgToyfacesTansparentBg29,
                                    height: 328.v,
                                    width: 217.h,
                                    alignment: Alignment.centerRight),
                                CustomImageView(
                                    imagePath: ImageConstant.imgRectangle5,
                                    height: 180.v,
                                    width: 221.h,
                                    alignment: Alignment.bottomRight,
                                    margin: EdgeInsets.only(bottom: 29.v)),
                                CustomImageView(
                                    imagePath:
                                        ImageConstant.imgToyfacesTansparentBg49,
                                    height: 453.v,
                                    width: 299.h,
                                    alignment: Alignment.topLeft),
                                CustomImageView(
                                    imagePath: ImageConstant.imgRectangle3,
                                    height: 195.v,
                                    width: 319.h,
                                    alignment: Alignment.bottomLeft,
                                    margin: EdgeInsets.only(bottom: 35.v)),
                                CustomImageView(
                                    imagePath: ImageConstant.imgRectangle4,
                                    height: 64.v,
                                    width: 244.h,
                                    alignment: Alignment.bottomRight,
                                    margin: EdgeInsets.only(bottom: 11.v)),
                                CustomElevatedButton(
                                    width: 314.h,
                                    text: "lbl_get_starteed".tr,
                                    buttonStyle:
                                        CustomButtonStyles.fillOnPrimary,
                                    buttonTextStyle: CustomTextStyles
                                        .titleMediumDeeporangeA40001,
                                    alignment: Alignment.bottomCenter)
                              ]))
                    ]))));
  }
}
