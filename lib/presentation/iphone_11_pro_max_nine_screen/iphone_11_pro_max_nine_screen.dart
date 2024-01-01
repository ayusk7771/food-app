import 'models/iphone_11_pro_max_nine_model.dart';
import 'package:ayush_s_application1/core/app_export.dart';
import 'package:ayush_s_application1/widgets/app_bar/appbar_leading_image.dart';
import 'package:ayush_s_application1/widgets/app_bar/appbar_title.dart';
import 'package:ayush_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:ayush_s_application1/widgets/custom_elevated_button.dart';
import 'package:ayush_s_application1/widgets/custom_icon_button.dart';
import 'package:ayush_s_application1/widgets/custom_radio_button.dart';
import 'package:flutter/material.dart';
import 'provider/iphone_11_pro_max_nine_provider.dart';

class Iphone11ProMaxNineScreen extends StatefulWidget {
  const Iphone11ProMaxNineScreen({Key? key}) : super(key: key);

  @override
  Iphone11ProMaxNineScreenState createState() =>
      Iphone11ProMaxNineScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => Iphone11ProMaxNineProvider(),
        child: Iphone11ProMaxNineScreen());
  }
}

class Iphone11ProMaxNineScreenState extends State<Iphone11ProMaxNineScreen> {
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
                padding: EdgeInsets.symmetric(horizontal: 46.h, vertical: 27.v),
                child: Column(children: [
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                          padding: EdgeInsets.only(left: 4.h),
                          child: Text("lbl_payment".tr,
                              style: theme.textTheme.displaySmall))),
                  SizedBox(height: 45.v),
                  _buildPaymentMethod(context),
                  SizedBox(height: 19.v),
                  _buildDeliveryMethod(context),
                  SizedBox(height: 39.v),
                  Padding(
                      padding: EdgeInsets.only(left: 4.h, right: 2.h),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                                padding: EdgeInsets.only(bottom: 5.v),
                                child: Text("lbl_total".tr,
                                    style: theme.textTheme.bodyLarge)),
                            Text("lbl_23_000".tr,
                                style: CustomTextStyles.titleLargeSFProText)
                          ])),
                  SizedBox(height: 5.v)
                ])),
            bottomNavigationBar: _buildProceedToPayment(context)));
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
        title: AppbarTitle(text: "lbl_checkout".tr));
  }

  /// Section Widget
  Widget _buildPaymentMethod(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(right: 2.h),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Padding(
              padding: EdgeInsets.only(left: 3.h),
              child: Text("lbl_payment_method2".tr,
                  style: CustomTextStyles.titleMedium17)),
          SizedBox(height: 18.v),
          Container(
              width: 315.h,
              margin: EdgeInsets.only(right: 5.h),
              padding: EdgeInsets.symmetric(horizontal: 21.h, vertical: 20.v),
              decoration: AppDecoration.outlineBlack900
                  .copyWith(borderRadius: BorderRadiusStyle.roundedBorder20),
              child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(children: [
                      Container(
                          margin: EdgeInsets.only(top: 11.v, bottom: 14.v),
                          padding: EdgeInsets.all(3.h),
                          decoration: AppDecoration.outlinePrimary.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder7),
                          child: Container(
                              height: 7.adaptSize,
                              width: 7.adaptSize,
                              decoration: BoxDecoration(
                                  color: theme.colorScheme.primary,
                                  borderRadius: BorderRadius.circular(3.h)))),
                      Padding(
                          padding: EdgeInsets.only(left: 15.h),
                          child: CustomIconButton(
                              height: 40.adaptSize,
                              width: 40.adaptSize,
                              padding: EdgeInsets.all(11.h),
                              child: CustomImageView(
                                  imagePath: ImageConstant
                                      .imgBiCreditCard2FrontFill))),
                      Padding(
                          padding: EdgeInsets.only(
                              left: 11.h, top: 9.v, bottom: 9.v),
                          child: Text("lbl_card".tr,
                              style: theme.textTheme.bodyLarge))
                    ]),
                    SizedBox(height: 15.v),
                    Opacity(
                        opacity: 0.3,
                        child: Align(
                            alignment: Alignment.centerRight,
                            child: Divider(
                                color: appTheme.black900.withOpacity(0.46),
                                indent: 30.h,
                                endIndent: 11.h))),
                    SizedBox(height: 14.v),
                    Row(children: [
                      Container(
                          height: 15.adaptSize,
                          width: 15.adaptSize,
                          margin: EdgeInsets.only(top: 11.v, bottom: 14.v),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(7.h),
                              border: Border.all(
                                  color: appTheme.gray50001, width: 1.h))),
                      Padding(
                          padding: EdgeInsets.only(left: 15.h),
                          child: CustomIconButton(
                              height: 40.adaptSize,
                              width: 40.adaptSize,
                              padding: EdgeInsets.all(9.h),
                              decoration: IconButtonStyleHelper.fillPink,
                              child: CustomImageView(
                                  imagePath: ImageConstant.imgDashiconsBank))),
                      Padding(
                          padding: EdgeInsets.only(
                              left: 11.h, top: 9.v, bottom: 9.v),
                          child: Text("lbl_bank_account".tr,
                              style: theme.textTheme.bodyLarge))
                    ]),
                    SizedBox(height: 55.v)
                  ]))
        ]));
  }

  /// Section Widget
  Widget _buildDeliveryMethod(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(right: 2.h),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Padding(
              padding: EdgeInsets.only(left: 8.h),
              child: Text("msg_delivery_method".tr,
                  style: CustomTextStyles.titleMedium17)),
          SizedBox(height: 18.v),
          Padding(
              padding: EdgeInsets.only(left: 5.h),
              child: Consumer<Iphone11ProMaxNineProvider>(
                  builder: (context, provider, child) {
                return provider.iphone11ProMaxNineModelObj!.radioList.isNotEmpty
                    ? Column(children: [
                        Padding(
                            padding: EdgeInsets.only(
                                left: 21.h, top: 30.v, right: 32.h),
                            child: CustomRadioButton(
                                text: "lbl_door_delivery".tr,
                                value: provider.iphone11ProMaxNineModelObj
                                        ?.radioList[0] ??
                                    "",
                                groupValue: provider.deliveryMethod,
                                padding:
                                    EdgeInsets.only(left: 16.h, right: 30.h),
                                onChange: (value) {
                                  provider.changeRadioButton1(value);
                                })),
                        Padding(
                            padding:
                                EdgeInsets.fromLTRB(21.h, 25.v, 204.h, 34.v),
                            child: CustomRadioButton(
                                text: "lbl_pick_up".tr,
                                value: provider.iphone11ProMaxNineModelObj
                                        ?.radioList[1] ??
                                    "",
                                groupValue: provider.deliveryMethod,
                                onChange: (value) {
                                  provider.changeRadioButton1(value);
                                }))
                      ])
                    : Container();
              }))
        ]));
  }

  /// Section Widget
  Widget _buildProceedToPayment(BuildContext context) {
    return CustomElevatedButton(
        text: "msg_proceed_to_payment".tr,
        margin: EdgeInsets.only(left: 50.h, right: 50.h, bottom: 41.v));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}
