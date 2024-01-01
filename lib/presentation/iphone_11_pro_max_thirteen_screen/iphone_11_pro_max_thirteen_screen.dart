import 'models/iphone_11_pro_max_thirteen_model.dart';
import 'package:ayush_s_application1/core/app_export.dart';
import 'package:ayush_s_application1/widgets/app_bar/appbar_leading_image.dart';
import 'package:ayush_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:ayush_s_application1/widgets/custom_elevated_button.dart';
import 'package:ayush_s_application1/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'provider/iphone_11_pro_max_thirteen_provider.dart';

class Iphone11ProMaxThirteenScreen extends StatefulWidget {
  const Iphone11ProMaxThirteenScreen({Key? key}) : super(key: key);

  @override
  Iphone11ProMaxThirteenScreenState createState() =>
      Iphone11ProMaxThirteenScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => Iphone11ProMaxThirteenProvider(),
        child: Iphone11ProMaxThirteenScreen());
  }
}

class Iphone11ProMaxThirteenScreenState
    extends State<Iphone11ProMaxThirteenScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(vertical: 30.v),
                child: Column(children: [
                  SizedBox(height: 26.v),
                  Expanded(
                      child: SingleChildScrollView(
                          child: Padding(
                              padding: EdgeInsets.only(
                                  left: 42.h, right: 57.h, bottom: 5.v),
                              child: Column(children: [
                                Align(
                                    alignment: Alignment.centerLeft,
                                    child: Padding(
                                        padding: EdgeInsets.only(left: 8.h),
                                        child: Text("lbl_my_profile".tr,
                                            style:
                                                theme.textTheme.displaySmall))),
                                SizedBox(height: 40.v),
                                _buildUserProfile(context),
                                SizedBox(height: 27.v),
                                _buildRecentOrders(context,
                                    text: "lbl_orders".tr),
                                SizedBox(height: 27.v),
                                _buildRecentOrders(context,
                                    text: "lbl_pending_reviews".tr),
                                SizedBox(height: 27.v),
                                _buildRecentOrders(context, text: "lbl_faq".tr),
                                SizedBox(height: 27.v),
                                _buildRecentOrders(context, text: "lbl_help".tr)
                              ]))))
                ])),
            bottomNavigationBar: _buildUpdate(context)));
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

  /// Section Widget
  Widget _buildUserProfile(BuildContext context) {
    return Column(children: [
      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Text("msg_personal_details".tr, style: theme.textTheme.titleMedium),
        Padding(
            padding: EdgeInsets.only(top: 4.v),
            child: Text("lbl_change".tr,
                style: CustomTextStyles.bodyMediumPrimary))
      ]),
      SizedBox(height: 10.v),
      Container(
          padding: EdgeInsets.symmetric(vertical: 18.v),
          decoration: AppDecoration.outlineBlack900
              .copyWith(borderRadius: BorderRadiusStyle.roundedBorder20),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomImageView(
                    imagePath: ImageConstant.imgRectangle6,
                    height: 100.v,
                    width: 91.h,
                    radius: BorderRadius.circular(10.h),
                    margin: EdgeInsets.only(bottom: 61.v)),
                Padding(
                    padding: EdgeInsets.symmetric(vertical: 8.v),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("lbl_marvis_ighedosa".tr,
                              style: theme.textTheme.titleMedium),
                          SizedBox(height: 5.v),
                          Opacity(
                              opacity: 0.5,
                              child: Text("msg_dosamarvis_gmail_com".tr,
                                  style: theme.textTheme.bodyMedium)),
                          SizedBox(height: 6.v),
                          Opacity(
                              opacity: 0.5,
                              child: SizedBox(
                                  width: 165.h,
                                  child: Divider(
                                      color: appTheme.black900
                                          .withOpacity(0.53)))),
                          SizedBox(height: 6.v),
                          Selector<Iphone11ProMaxThirteenProvider,
                                  TextEditingController?>(
                              selector: (context, provider) =>
                                  provider.mobileNoController,
                              builder: (context, mobileNoController, child) {
                                return CustomTextFormField(
                                    width: 165.h,
                                    controller: mobileNoController,
                                    hintText: "lbl_234_9011039271".tr,
                                    hintStyle: theme.textTheme.bodyMedium!,
                                    textInputAction: TextInputAction.done,
                                    borderDecoration: TextFormFieldStyleHelper
                                        .underLineBlack2);
                              }),
                          SizedBox(height: 5.v),
                          Opacity(
                              opacity: 0.5,
                              child: SizedBox(
                                  width: 177.h,
                                  child: Text("msg_no_15_uti_street".tr,
                                      maxLines: 3,
                                      overflow: TextOverflow.ellipsis,
                                      style: theme.textTheme.bodyMedium)))
                        ]))
              ]))
    ]);
  }

  /// Section Widget
  Widget _buildUpdate(BuildContext context) {
    return CustomElevatedButton(
        text: "lbl_update".tr,
        margin: EdgeInsets.only(left: 50.h, right: 50.h, bottom: 30.v));
  }

  /// Common widget
  Widget _buildRecentOrders(
    BuildContext context, {
    required String text,
  }) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 23.h, vertical: 17.v),
        decoration: AppDecoration.outlineBlack900
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder20),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Padding(
              padding: EdgeInsets.only(top: 3.v),
              child: Text(text,
                  style: theme.textTheme.titleMedium!
                      .copyWith(color: appTheme.black900))),
          CustomImageView(
              imagePath: ImageConstant.imgArrowRight,
              height: 24.adaptSize,
              width: 24.adaptSize,
              margin: EdgeInsets.only(top: 2.v, right: 4.h))
        ]));
  }

  /// Navigates to the previous screen.
  onTapVector(BuildContext context) {
    NavigatorService.goBack();
  }
}
