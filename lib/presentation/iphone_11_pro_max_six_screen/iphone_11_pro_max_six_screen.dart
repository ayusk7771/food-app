import '../iphone_11_pro_max_six_screen/widgets/card_item_widget.dart';
import 'models/card_item_model.dart';
import 'models/iphone_11_pro_max_six_model.dart';
import 'package:ayush_s_application1/core/app_export.dart';
import 'package:ayush_s_application1/widgets/app_bar/appbar_leading_image.dart';
import 'package:ayush_s_application1/widgets/app_bar/appbar_title.dart';
import 'package:ayush_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:ayush_s_application1/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'provider/iphone_11_pro_max_six_provider.dart';

class Iphone11ProMaxSixScreen extends StatefulWidget {
  const Iphone11ProMaxSixScreen({Key? key}) : super(key: key);

  @override
  Iphone11ProMaxSixScreenState createState() => Iphone11ProMaxSixScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => Iphone11ProMaxSixProvider(),
        child: Iphone11ProMaxSixScreen());
  }
}

class Iphone11ProMaxSixScreenState extends State<Iphone11ProMaxSixScreen> {
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
                padding: EdgeInsets.symmetric(horizontal: 49.h, vertical: 37.v),
                child: Column(children: [
                  _buildInformationSection(context),
                  SizedBox(height: 48.v),
                  _buildPaymentMethodSection(context),
                  SizedBox(height: 5.v)
                ])),
            bottomNavigationBar: _buildUpdateButton(context)));
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
        title: AppbarTitle(text: "lbl_my_profile".tr));
  }

  /// Section Widget
  Widget _buildInformationSection(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 1.h),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Padding(
              padding: EdgeInsets.only(left: 3.h),
              child: Text("lbl_information".tr,
                  style: CustomTextStyles.titleMedium17)),
          SizedBox(height: 11.v),
          Container(
              padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 20.v),
              decoration: AppDecoration.outlineBlack900
                  .copyWith(borderRadius: BorderRadiusStyle.roundedBorder20),
              child:
                  Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                CustomImageView(
                    imagePath: ImageConstant.imgRectangle6,
                    height: 60.adaptSize,
                    width: 60.adaptSize,
                    radius: BorderRadius.circular(10.h),
                    margin: EdgeInsets.only(bottom: 33.v)),
                Padding(
                    padding: EdgeInsets.only(left: 15.h, bottom: 5.v),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("lbl_marvis_ighedosa".tr,
                              style: theme.textTheme.titleMedium),
                          SizedBox(height: 8.v),
                          Opacity(
                              opacity: 0.5,
                              child: Text("msg_dosamarvis_gmail_com2".tr,
                                  style: CustomTextStyles.bodyMedium13)),
                          SizedBox(height: 7.v),
                          Opacity(
                              opacity: 0.5,
                              child: SizedBox(
                                  width: 187.h,
                                  child: Text("msg_no_15_uti_street".tr,
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      style: CustomTextStyles.bodyMedium13)))
                        ]))
              ]))
        ]));
  }

  /// Section Widget
  Widget _buildPaymentMethodSection(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 1.h),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Padding(
              padding: EdgeInsets.only(left: 3.h),
              child: Text("lbl_payment_method".tr,
                  style: CustomTextStyles.titleMedium17)),
          SizedBox(height: 19.v),
          Container(
              padding: EdgeInsets.symmetric(horizontal: 21.h, vertical: 20.v),
              decoration: AppDecoration.outlineBlack900
                  .copyWith(borderRadius: BorderRadiusStyle.roundedBorder20),
              child: Consumer<Iphone11ProMaxSixProvider>(
                  builder: (context, provider, child) {
                return ListView.separated(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    separatorBuilder: (context, index) {
                      return Opacity(
                          opacity: 0.3,
                          child: Padding(
                              padding: EdgeInsets.symmetric(vertical: 7.0.v),
                              child: SizedBox(
                                  width: 232.h,
                                  child: Divider(
                                      height: 1.v,
                                      thickness: 1.v,
                                      color: appTheme.black900
                                          .withOpacity(0.46)))));
                    },
                    itemCount:
                        provider.iphone11ProMaxSixModelObj.cardItemList.length,
                    itemBuilder: (context, index) {
                      CardItemModel model = provider
                          .iphone11ProMaxSixModelObj.cardItemList[index];
                      return CardItemWidget(model);
                    });
              }))
        ]));
  }

  /// Section Widget
  Widget _buildUpdateButton(BuildContext context) {
    return CustomElevatedButton(
        text: "lbl_updatet".tr,
        margin: EdgeInsets.only(left: 50.h, right: 50.h, bottom: 41.v));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}
