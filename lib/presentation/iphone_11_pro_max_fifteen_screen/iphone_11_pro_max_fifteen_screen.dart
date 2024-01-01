import 'models/iphone_11_pro_max_fifteen_model.dart';
import 'package:ayush_s_application1/core/app_export.dart';
import 'package:ayush_s_application1/widgets/app_bar/appbar_leading_image.dart';
import 'package:ayush_s_application1/widgets/app_bar/appbar_title.dart';
import 'package:ayush_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:ayush_s_application1/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'provider/iphone_11_pro_max_fifteen_provider.dart';

class Iphone11ProMaxFifteenScreen extends StatefulWidget {
  const Iphone11ProMaxFifteenScreen({Key? key}) : super(key: key);

  @override
  Iphone11ProMaxFifteenScreenState createState() =>
      Iphone11ProMaxFifteenScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => Iphone11ProMaxFifteenProvider(),
        child: Iphone11ProMaxFifteenScreen());
  }
}

class Iphone11ProMaxFifteenScreenState
    extends State<Iphone11ProMaxFifteenScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.only(top: 172.v),
                child: Column(children: [
                  CustomImageView(
                      imagePath: ImageConstant.imgVectorGray40002,
                      height: 118.v,
                      width: 106.h),
                  SizedBox(height: 27.v),
                  Text("lbl_no_history_yet".tr,
                      style: theme.textTheme.headlineMedium),
                  SizedBox(height: 14.v),
                  Opacity(
                      opacity: 0.57,
                      child: SizedBox(
                          width: 220.h,
                          child: Text("msg_hit_the_orange_button".tr,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.center,
                              style: CustomTextStyles.bodyLargeBlack900))),
                  SizedBox(height: 5.v)
                ])),
            bottomNavigationBar: _buildStartOrdering(context)));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 65.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 41.h, top: 16.v, bottom: 16.v),
            onTap: () {
              onTapArrowLeft(context);
            }),
        centerTitle: true,
        title: AppbarTitle(text: "lbl_history".tr));
  }

  /// Section Widget
  Widget _buildStartOrdering(BuildContext context) {
    return CustomElevatedButton(
        text: "lbl_start_odering".tr,
        margin: EdgeInsets.only(left: 50.h, right: 50.h, bottom: 41.v));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}
