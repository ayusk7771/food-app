import 'models/iphone_11_pro_max_five_model.dart';
import 'package:ayush_s_application1/core/app_export.dart';
import 'package:flutter/material.dart';
import 'provider/iphone_11_pro_max_five_provider.dart';

class Iphone11ProMaxFiveScreen extends StatefulWidget {
  const Iphone11ProMaxFiveScreen({Key? key}) : super(key: key);

  @override
  Iphone11ProMaxFiveScreenState createState() =>
      Iphone11ProMaxFiveScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => Iphone11ProMaxFiveProvider(),
        child: Iphone11ProMaxFiveScreen());
  }
}

class Iphone11ProMaxFiveScreenState extends State<Iphone11ProMaxFiveScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.gray20002,
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  SizedBox(height: 69.v),
                  Expanded(
                      child: SingleChildScrollView(
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                        Padding(
                            padding: EdgeInsets.only(left: 42.h, right: 196.h),
                            child: Row(children: [
                              CustomImageView(
                                  imagePath: ImageConstant.imgArrowLeft,
                                  height: 24.adaptSize,
                                  width: 24.adaptSize,
                                  onTap: () {
                                    onTapImgArrowLeft(context);
                                  }),
                              Spacer(),
                              Padding(
                                  padding: EdgeInsets.only(top: 3.v),
                                  child: Text("lbl_spicy_chieckns".tr,
                                      style: CustomTextStyles
                                          .titleMediumSFProRounded)),
                              Padding(
                                  padding: EdgeInsets.only(left: 3.h),
                                  child: SizedBox(
                                      height: 26.v,
                                      child: VerticalDivider(
                                          width: 1.h,
                                          thickness: 1.v,
                                          color: appTheme.black900)))
                            ])),
                        SizedBox(height: 34.v),
                        SizedBox(
                            height: 978.v,
                            width: double.maxFinite,
                            child: Stack(
                                alignment: Alignment.bottomRight,
                                children: [
                                  Align(
                                      alignment: Alignment.topCenter,
                                      child: Container(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 33.h, vertical: 34.v),
                                          decoration: AppDecoration.fillGray50
                                              .copyWith(
                                                  borderRadius:
                                                      BorderRadiusStyle
                                                          .roundedBorder30),
                                          child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                Text("msg_found_6_results".tr,
                                                    style: CustomTextStyles
                                                        .headlineMediumSFProRoundedBold),
                                                SizedBox(height: 44.v),
                                                Padding(
                                                    padding: EdgeInsets.only(
                                                        left: 1.h),
                                                    child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Padding(
                                                              padding: EdgeInsets
                                                                  .only(
                                                                      right:
                                                                          17.h,
                                                                      bottom:
                                                                          61.v),
                                                              child: _buildEggAndCucmber(
                                                                  context,
                                                                  dynamicText:
                                                                      "msg_veggie_tomato_mix"
                                                                          .tr,
                                                                  dynamicText1:
                                                                      "lbl_n1_900"
                                                                          .tr,
                                                                  dynamicText2:
                                                                      "msg_fried_chicken_m"
                                                                          .tr,
                                                                  dynamicText3:
                                                                      "lbl_n1_900"
                                                                          .tr)),
                                                          Padding(
                                                              padding: EdgeInsets
                                                                  .only(
                                                                      left:
                                                                          17.h,
                                                                      top:
                                                                          54.v),
                                                              child: _buildEggAndCucmber(
                                                                  context,
                                                                  dynamicText:
                                                                      "msg_egg_and_cucmber"
                                                                          .tr,
                                                                  dynamicText1:
                                                                      "lbl_n1_900"
                                                                          .tr,
                                                                  dynamicText2:
                                                                      "msg_moi_moi_and_ekpa"
                                                                          .tr,
                                                                  dynamicText3:
                                                                      "lbl_n1_900"
                                                                          .tr))
                                                        ])),
                                                SizedBox(height: 81.v)
                                              ]))),
                                  Padding(
                                      padding: EdgeInsets.only(right: 33.h),
                                      child: _buildSix(context,
                                          dynamicText: "msg_egg_and_cucmber".tr,
                                          dynamicText1: "lbl_n1_900".tr)),
                                  Padding(
                                      padding: EdgeInsets.only(
                                          left: 34.h, bottom: 61.v),
                                      child: _buildSix(context,
                                          dynamicText:
                                              "msg_veggie_tomato_mix".tr,
                                          dynamicText1: "lbl_n1_900".tr))
                                ]))
                      ])))
                ]))));
  }

  /// Common widget
  Widget _buildSix(
    BuildContext context, {
    required String dynamicText,
    required String dynamicText1,
  }) {
    return SizedBox(
        height: 252.v,
        width: 156.h,
        child: Stack(alignment: Alignment.topCenter, children: [
          Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 18.h, vertical: 23.v),
                  decoration: AppDecoration.outlineOnPrimaryContainer.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder30),
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        SizedBox(height: 81.v),
                        SizedBox(
                            width: 105.h,
                            child: Text(dynamicText,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.center,
                                style: theme.textTheme.titleLarge!.copyWith(
                                    color: appTheme.black900, height: 1.01))),
                        SizedBox(height: 13.v),
                        Padding(
                            padding: EdgeInsets.only(left: 26.h),
                            child: Text(dynamicText1,
                                style: CustomTextStyles
                                    .titleMediumSFProRoundedPrimary
                                    .copyWith(
                                        color: theme.colorScheme.primary)))
                      ]))),
          CustomImageView(
              imagePath: ImageConstant.imgImage21,
              height: 128.adaptSize,
              width: 128.adaptSize,
              radius: BorderRadius.circular(64.h),
              alignment: Alignment.topCenter)
        ]));
  }

  /// Common widget
  Widget _buildEggAndCucmber(
    BuildContext context, {
    required String dynamicText,
    required String dynamicText1,
    required String dynamicText2,
    required String dynamicText3,
  }) {
    return Expanded(
        child: SizedBox(
            width: double.maxFinite,
            child: Column(children: [
              SizedBox(
                  height: 252.v,
                  width: 156.h,
                  child: Stack(alignment: Alignment.topCenter, children: [
                    Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 19.h, vertical: 23.v),
                            decoration: AppDecoration.outlineOnPrimaryContainer
                                .copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder30),
                            child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  SizedBox(height: 81.v),
                                  SizedBox(
                                      width: 103.h,
                                      child: Text(dynamicText,
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.center,
                                          style: theme.textTheme.titleLarge!
                                              .copyWith(
                                                  color: appTheme.black900,
                                                  height: 1.01))),
                                  SizedBox(height: 13.v),
                                  Padding(
                                      padding: EdgeInsets.only(left: 26.h),
                                      child: Text(dynamicText1,
                                          style: CustomTextStyles
                                              .titleMediumSFProRoundedPrimary
                                              .copyWith(
                                                  color: theme
                                                      .colorScheme.primary)))
                                ]))),
                    CustomImageView(
                        imagePath: ImageConstant.imgImage22,
                        height: 128.adaptSize,
                        width: 128.adaptSize,
                        radius: BorderRadius.circular(64.h),
                        alignment: Alignment.topCenter)
                  ])),
              SizedBox(height: 23.v),
              SizedBox(
                  height: 252.v,
                  width: 156.h,
                  child: Stack(alignment: Alignment.topCenter, children: [
                    Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                            padding: EdgeInsets.all(23.h),
                            decoration: AppDecoration.outlineOnPrimaryContainer
                                .copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder30),
                            child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  SizedBox(height: 81.v),
                                  SizedBox(
                                      width: 95.h,
                                      child: Text(dynamicText2,
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.center,
                                          style: theme.textTheme.titleLarge!
                                              .copyWith(
                                                  color: appTheme.black900,
                                                  height: 1.01))),
                                  SizedBox(height: 9.v),
                                  Padding(
                                      padding: EdgeInsets.only(left: 21.h),
                                      child: Text(dynamicText3,
                                          style: CustomTextStyles
                                              .titleMediumSFProRoundedPrimary
                                              .copyWith(
                                                  color: theme
                                                      .colorScheme.primary)))
                                ]))),
                    CustomImageView(
                        imagePath: ImageConstant.imgImage23,
                        height: 128.adaptSize,
                        width: 128.adaptSize,
                        radius: BorderRadius.circular(64.h),
                        alignment: Alignment.topCenter)
                  ]))
            ])));
  }

  /// Navigates to the previous screen.
  onTapImgArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}
