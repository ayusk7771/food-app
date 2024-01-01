import '../iphone_11_pro_max_seven_screen/widgets/productcardlist_item_widget.dart';
import 'models/iphone_11_pro_max_seven_model.dart';
import 'models/productcardlist_item_model.dart';
import 'package:ayush_s_application1/core/app_export.dart';
import 'package:ayush_s_application1/widgets/app_bar/appbar_leading_image.dart';
import 'package:ayush_s_application1/widgets/app_bar/appbar_title.dart';
import 'package:ayush_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:ayush_s_application1/widgets/custom_elevated_button.dart';
import 'package:ayush_s_application1/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';
import 'provider/iphone_11_pro_max_seven_provider.dart';

class Iphone11ProMaxSevenScreen extends StatefulWidget {
  const Iphone11ProMaxSevenScreen({Key? key}) : super(key: key);

  @override
  Iphone11ProMaxSevenScreenState createState() =>
      Iphone11ProMaxSevenScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => Iphone11ProMaxSevenProvider(),
        child: Iphone11ProMaxSevenScreen());
  }
}

class Iphone11ProMaxSevenScreenState extends State<Iphone11ProMaxSevenScreen> {
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
                padding: EdgeInsets.symmetric(vertical: 39.v),
                child: Column(children: [
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgIwwaSwipe,
                        height: 20.adaptSize,
                        width: 20.adaptSize),
                    Padding(
                        padding:
                            EdgeInsets.only(left: 5.h, top: 5.v, bottom: 2.v),
                        child: Text("msg_swipe_on_an_item".tr,
                            style: theme.textTheme.bodySmall))
                  ]),
                  SizedBox(height: 19.v),
                  _buildProductCardList(context),
                  SizedBox(height: 17.v),
                  _buildVeggieTomatoMix(context),
                  SizedBox(height: 5.v)
                ])),
            bottomNavigationBar: _buildCompleteOrder(context)));
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
        title: AppbarTitle(text: "lbl_cart".tr));
  }

  /// Section Widget
  Widget _buildProductCardList(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 49.h),
        child: Consumer<Iphone11ProMaxSevenProvider>(
            builder: (context, provider, child) {
          return ListView.separated(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              separatorBuilder: (context, index) {
                return SizedBox(height: 1.v);
              },
              itemCount: provider
                  .iphone11ProMaxSevenModelObj.productcardlistItemList.length,
              itemBuilder: (context, index) {
                ProductcardlistItemModel model = provider
                    .iphone11ProMaxSevenModelObj.productcardlistItemList[index];
                return ProductcardlistItemWidget(model);
              });
        }));
  }

  /// Section Widget
  Widget _buildVeggieTomatoMix(BuildContext context) {
    return Align(
        alignment: Alignment.centerLeft,
        child: Padding(
            padding: EdgeInsets.only(right: 49.h),
            child: Row(children: [
              SizedBox(
                  height: 102.v,
                  width: 234.h,
                  child: Stack(alignment: Alignment.bottomRight, children: [
                    Align(
                        alignment: Alignment.center,
                        child: Container(
                            padding: EdgeInsets.symmetric(vertical: 16.v),
                            decoration: AppDecoration.outlineBlack900.copyWith(
                                borderRadius:
                                    BorderRadiusStyle.roundedBorder20),
                            child: Row(children: [
                              CustomImageView(
                                  imagePath: ImageConstant.imgImage269x5,
                                  height: 69.v,
                                  width: 5.h,
                                  radius: BorderRadius.circular(34.h)),
                              Padding(
                                  padding: EdgeInsets.only(
                                      left: 15.h, top: 12.v, bottom: 9.v),
                                  child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text("msg_veggie_tomato_mix".tr,
                                            style: CustomTextStyles
                                                .titleMediumSFProRounded),
                                        SizedBox(height: 9.v),
                                        Text("lbl_1_900".tr,
                                            style: theme.textTheme.titleSmall)
                                      ]))
                            ]))),
                    Align(
                        alignment: Alignment.bottomRight,
                        child: Container(
                            margin:
                                EdgeInsets.fromLTRB(153.h, 62.v, 29.h, 20.v),
                            padding: EdgeInsets.symmetric(horizontal: 7.h),
                            decoration: AppDecoration.fillPrimary.copyWith(
                                borderRadius:
                                    BorderRadiusStyle.roundedBorder10),
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Padding(
                                      padding: EdgeInsets.only(top: 1.v),
                                      child: Text("lbl2".tr,
                                          style: CustomTextStyles
                                              .titleSmallGray100)),
                                  Padding(
                                      padding:
                                          EdgeInsets.only(left: 8.h, top: 1.v),
                                      child: Text("lbl_1".tr,
                                          style: theme.textTheme.labelLarge)),
                                  Padding(
                                      padding: EdgeInsets.only(
                                          left: 9.h, top: 5.v, bottom: 2.v),
                                      child: Text("lbl3".tr,
                                          style: theme.textTheme.labelMedium))
                                ])))
                  ])),
              Padding(
                  padding: EdgeInsets.only(left: 24.h, top: 27.v, bottom: 30.v),
                  child: CustomIconButton(
                      height: 45.adaptSize,
                      width: 45.adaptSize,
                      padding: EdgeInsets.all(14.h),
                      decoration: IconButtonStyleHelper.fillSecondaryContainer,
                      child: CustomImageView(
                          imagePath: ImageConstant.imgFavorite))),
              Container(
                  height: 45.adaptSize,
                  width: 45.adaptSize,
                  margin: EdgeInsets.only(left: 15.h, top: 27.v, bottom: 30.v),
                  decoration: BoxDecoration(
                      color: theme.colorScheme.secondaryContainer,
                      borderRadius: BorderRadius.circular(22.h)))
            ])));
  }

  /// Section Widget
  Widget _buildCompleteOrder(BuildContext context) {
    return CustomElevatedButton(
        text: "lbl_complete_order".tr,
        margin: EdgeInsets.only(left: 50.h, right: 50.h, bottom: 41.v));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}
