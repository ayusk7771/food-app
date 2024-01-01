import 'models/iphone_11_pro_max_twentyone_model.dart';
import 'package:ayush_s_application1/core/app_export.dart';
import 'package:ayush_s_application1/widgets/app_bar/appbar_leading_image.dart';
import 'package:ayush_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'provider/iphone_11_pro_max_twentyone_provider.dart';

class Iphone11ProMaxTwentyoneScreen extends StatefulWidget {
  const Iphone11ProMaxTwentyoneScreen({Key? key}) : super(key: key);

  @override
  Iphone11ProMaxTwentyoneScreenState createState() =>
      Iphone11ProMaxTwentyoneScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => Iphone11ProMaxTwentyoneProvider(),
        child: Iphone11ProMaxTwentyoneScreen());
  }
}

class Iphone11ProMaxTwentyoneScreenState
    extends State<Iphone11ProMaxTwentyoneScreen> {
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
                padding: EdgeInsets.symmetric(horizontal: 47.h, vertical: 26.v),
                child: Column(children: [
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                          padding: EdgeInsets.only(left: 3.h),
                          child: Text("lbl_my_offers".tr,
                              style: CustomTextStyles.displaySmallPoppins))),
                  Spacer(flex: 53),
                  Text("msg_ohh_snap_no_offers".tr,
                      style: CustomTextStyles.headlineMediumPoppins),
                  SizedBox(height: 5.v),
                  Opacity(
                      opacity: 0.57,
                      child: Container(
                          width: 233.h,
                          margin: EdgeInsets.only(left: 44.h, right: 43.h),
                          child: Text("msg_bella_dose_t_have".tr,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.center,
                              style:
                                  CustomTextStyles.bodyLargePoppinsBlack900))),
                  Spacer(flex: 46)
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: double.maxFinite,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgVectorBlack900,
            margin: EdgeInsets.fromLTRB(50.h, 22.v, 358.h, 22.v),
            onTap: () {
              onTapVector(context);
            }));
  }

  /// Navigates to the previous screen.
  onTapVector(BuildContext context) {
    NavigatorService.goBack();
  }
}
