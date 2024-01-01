import '../iphone_11_pro_max_four_screen/widgets/slider_item_widget.dart';
import 'models/iphone_11_pro_max_four_model.dart';
import 'models/slider_item_model.dart';
import 'package:ayush_s_application1/core/app_export.dart';
import 'package:ayush_s_application1/widgets/app_bar/appbar_leading_image.dart';
import 'package:ayush_s_application1/widgets/app_bar/appbar_trailing_image.dart';
import 'package:ayush_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:ayush_s_application1/widgets/custom_elevated_button.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'provider/iphone_11_pro_max_four_provider.dart';

class Iphone11ProMaxFourScreen extends StatefulWidget {
  const Iphone11ProMaxFourScreen({Key? key}) : super(key: key);

  @override
  Iphone11ProMaxFourScreenState createState() =>
      Iphone11ProMaxFourScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => Iphone11ProMaxFourProvider(),
        child: Iphone11ProMaxFourScreen());
  }
}

class Iphone11ProMaxFourScreenState extends State<Iphone11ProMaxFourScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.gray10002,
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 53.h),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildSlider(context),
                      SizedBox(height: 37.v),
                      Align(
                          alignment: Alignment.center,
                          child: Consumer<Iphone11ProMaxFourProvider>(
                              builder: (context, provider, child) {
                            return SizedBox(
                                height: 8.v,
                                child: AnimatedSmoothIndicator(
                                    activeIndex: provider.sliderIndex,
                                    count: provider.iphone11ProMaxFourModelObj
                                        .sliderItemList.length,
                                    axisDirection: Axis.horizontal,
                                    effect: ScrollingDotsEffect(
                                        spacing: 12,
                                        activeDotColor:
                                            theme.colorScheme.primary,
                                        dotColor: appTheme.gray40001,
                                        dotHeight: 8.v,
                                        dotWidth: 8.h)));
                          })),
                      SizedBox(height: 46.v),
                      Align(
                          alignment: Alignment.center,
                          child: Text("msg_veggie_tomato_mix".tr,
                              style:
                                  CustomTextStyles.headlineMediumSFProRounded)),
                      SizedBox(height: 10.v),
                      Align(
                          alignment: Alignment.center,
                          child: Text("lbl_n1_900".tr,
                              style: CustomTextStyles.titleLargePrimary)),
                      SizedBox(height: 34.v),
                      Text("lbl_delivery_info".tr,
                          style: CustomTextStyles.titleMediumSFProRounded),
                      SizedBox(height: 6.v),
                      Opacity(
                          opacity: 0.5,
                          child: Container(
                              width: 261.h,
                              margin: EdgeInsets.only(right: 46.h),
                              child: Text("msg_delivered_between".tr,
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  style: CustomTextStyles.bodyMedium_1
                                      .copyWith(height: 1.39)))),
                      SizedBox(height: 40.v),
                      Text("lbl_return_policy".tr,
                          style: CustomTextStyles.titleMediumSFProRounded),
                      SizedBox(height: 2.v),
                      Opacity(
                          opacity: 0.5,
                          child: Container(
                              width: 294.h,
                              margin: EdgeInsets.only(right: 13.h),
                              child: Text("msg_all_our_foods_are".tr,
                                  maxLines: 4,
                                  overflow: TextOverflow.ellipsis,
                                  style: CustomTextStyles.bodyMedium_1
                                      .copyWith(height: 1.39)))),
                      SizedBox(height: 5.v)
                    ])),
            bottomNavigationBar: _buildAddToCart(context)));
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
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgHeartBlack900,
              margin: EdgeInsets.fromLTRB(54.h, 16.v, 54.h, 20.v))
        ]);
  }

  /// Section Widget
  Widget _buildSlider(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 33.h),
        child: Consumer<Iphone11ProMaxFourProvider>(
            builder: (context, provider, child) {
          return CarouselSlider.builder(
              options: CarouselOptions(
                  height: 241.adaptSize,
                  initialPage: 0,
                  autoPlay: true,
                  viewportFraction: 1.0,
                  enableInfiniteScroll: false,
                  scrollDirection: Axis.horizontal,
                  onPageChanged: (index, reason) {
                    provider.sliderIndex = index;
                  }),
              itemCount:
                  provider.iphone11ProMaxFourModelObj.sliderItemList.length,
              itemBuilder: (context, index, realIndex) {
                SliderItemModel model =
                    provider.iphone11ProMaxFourModelObj.sliderItemList[index];
                return SliderItemWidget(model);
              });
        }));
  }

  /// Section Widget
  Widget _buildAddToCart(BuildContext context) {
    return CustomElevatedButton(
        text: "lbl_add_to_cart".tr,
        margin: EdgeInsets.only(left: 50.h, right: 50.h, bottom: 41.v));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}
