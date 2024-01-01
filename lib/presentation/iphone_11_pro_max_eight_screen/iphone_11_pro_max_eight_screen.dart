import 'models/iphone_11_pro_max_eight_model.dart';
import 'package:ayush_s_application1/core/app_export.dart';
import 'package:ayush_s_application1/widgets/app_bar/appbar_leading_image.dart';
import 'package:ayush_s_application1/widgets/app_bar/appbar_title.dart';
import 'package:ayush_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:ayush_s_application1/widgets/custom_elevated_button.dart';
import 'package:ayush_s_application1/widgets/custom_radio_button.dart';
import 'package:ayush_s_application1/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'provider/iphone_11_pro_max_eight_provider.dart';

class Iphone11ProMaxEightScreen extends StatefulWidget {
  const Iphone11ProMaxEightScreen({Key? key}) : super(key: key);

  @override
  Iphone11ProMaxEightScreenState createState() =>
      Iphone11ProMaxEightScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => Iphone11ProMaxEightProvider(),
        child: Iphone11ProMaxEightScreen());
  }
}

class Iphone11ProMaxEightScreenState extends State<Iphone11ProMaxEightScreen> {
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
                padding: EdgeInsets.symmetric(horizontal: 46.h, vertical: 26.v),
                child: Column(children: [
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                          padding: EdgeInsets.only(left: 4.h),
                          child: Text("lbl_delivery".tr,
                              style: theme.textTheme.displaySmall))),
                  SizedBox(height: 41.v),
                  _buildDeliveryDetails(context),
                  SizedBox(height: 42.v),
                  _buildDeliveryMethod(context),
                  SizedBox(height: 68.v),
                  Padding(
                      padding: EdgeInsets.only(left: 4.h, right: 3.h),
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
  Widget _buildDeliveryDetails(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 4.h),
        child: Column(children: [
          Padding(
              padding: EdgeInsets.only(left: 3.h, right: 11.h),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("lbl_address_details".tr,
                        style: CustomTextStyles.titleMedium17),
                    Text("lbl_change".tr,
                        style: CustomTextStyles.bodyMediumOrange700)
                  ])),
          SizedBox(height: 19.v),
          Container(
              width: 315.h,
              margin: EdgeInsets.only(right: 3.h),
              padding: EdgeInsets.symmetric(horizontal: 30.h, vertical: 25.v),
              decoration: AppDecoration.outlineBlack900
                  .copyWith(borderRadius: BorderRadiusStyle.roundedBorder20),
              child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                        padding: EdgeInsets.only(right: 23.h),
                        child: Selector<Iphone11ProMaxEightProvider,
                                TextEditingController?>(
                            selector: (context, provider) =>
                                provider.marvisKparobovalueController,
                            builder:
                                (context, marvisKparobovalueController, child) {
                              return CustomTextFormField(
                                  controller: marvisKparobovalueController,
                                  hintText: "lbl_marvis_kparobo".tr,
                                  hintStyle: CustomTextStyles.titleMediumMedium,
                                  textInputAction: TextInputAction.done,
                                  borderDecoration:
                                      TextFormFieldStyleHelper.underLineBlack1);
                            })),
                    SizedBox(height: 6.v),
                    Container(
                        width: 223.h,
                        margin: EdgeInsets.only(right: 32.h),
                        child: Text("msg_km_5_refinery_road".tr,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: CustomTextStyles.bodyMediumBlack900)),
                    SizedBox(height: 5.v),
                    Opacity(
                        opacity: 0.3,
                        child: Divider(
                            color: appTheme.black900.withOpacity(0.46),
                            endIndent: 23.h)),
                    SizedBox(height: 7.v),
                    Text("lbl_234_9011039271".tr,
                        style: CustomTextStyles.bodyMediumBlack900)
                  ]))
        ]));
  }

  /// Section Widget
  Widget _buildDeliveryMethod(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 4.h),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Padding(
              padding: EdgeInsets.only(left: 6.h),
              child: Text("msg_delivery_method".tr,
                  style: CustomTextStyles.titleMedium17)),
          SizedBox(height: 18.v),
          Padding(
              padding: EdgeInsets.only(left: 3.h),
              child: Consumer<Iphone11ProMaxEightProvider>(
                  builder: (context, provider, child) {
                return provider
                        .iphone11ProMaxEightModelObj!.radioList.isNotEmpty
                    ? Column(children: [
                        Padding(
                            padding: EdgeInsets.only(
                                left: 21.h, top: 30.v, right: 32.h),
                            child: CustomRadioButton(
                                text: "lbl_door_delivery".tr,
                                value: provider.iphone11ProMaxEightModelObj
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
                                value: provider.iphone11ProMaxEightModelObj
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
