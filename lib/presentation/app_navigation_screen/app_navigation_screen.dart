import 'models/app_navigation_model.dart';
import 'package:ayush_s_application1/core/app_export.dart';
import 'package:flutter/material.dart';
import 'provider/app_navigation_provider.dart';

class AppNavigationScreen extends StatefulWidget {
  const AppNavigationScreen({Key? key})
      : super(
          key: key,
        );

  @override
  AppNavigationScreenState createState() => AppNavigationScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => AppNavigationProvider(),
      child: AppNavigationScreen(),
    );
  }
}

class AppNavigationScreenState extends State<AppNavigationScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0XFFFFFFFF),
        body: SizedBox(
          width: 375.h,
          child: Column(
            children: [
              _buildAppNavigation(context),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0XFFFFFFFF),
                    ),
                    child: Column(
                      children: [
                        _buildScreenTitle(
                          context,
                          screenTitle: "iPhone 11 Pro Max - One".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.iphone11ProMaxOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "iPhone 11 Pro Max - Two".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.iphone11ProMaxTwoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle:
                              "iPhone 11 Pro Max - Three - Tab Container".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.iphone11ProMaxThreeTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "iPhone 11 Pro Max - Fifteen".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.iphone11ProMaxFifteenScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "iPhone 11 Pro Max - Sixteen".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.iphone11ProMaxSixteenScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "iPhone 11 Pro Max - Five".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.iphone11ProMaxFiveScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "iPhone 11 Pro Max - Six".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.iphone11ProMaxSixScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "iPhone 11 Pro Max - Four".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.iphone11ProMaxFourScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "iPhone 11 Pro Max - Eight".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.iphone11ProMaxEightScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "iPhone 11 Pro Max - Seven".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.iphone11ProMaxSevenScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "iPhone 11 Pro Max - TwentyOne".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.iphone11ProMaxTwentyoneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "iPhone 11 Pro Max - Nine".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.iphone11ProMaxNineScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "iPhone 11 Pro Max - Thirteen".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.iphone11ProMaxThirteenScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "iPhone 11 Pro Max - Ten".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.iphone11ProMaxTenScreen),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAppNavigation(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFFFFFFFF),
      ),
      child: Column(
        children: [
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                "App Navigation".tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Text(
                "Check your app's UI from the below demo screens of your app."
                    .tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF888888),
                  fontSize: 16.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 5.v),
          Divider(
            height: 1.v,
            thickness: 1.v,
            color: Color(0XFF000000),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildScreenTitle(
    BuildContext context, {
    required String screenTitle,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle!.call();
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0XFFFFFFFF),
        ),
        child: Column(
          children: [
            SizedBox(height: 10.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Text(
                  screenTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0XFF000000),
                    fontSize: 20.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.v),
            SizedBox(height: 5.v),
            Divider(
              height: 1.v,
              thickness: 1.v,
              color: Color(0XFF888888),
            ),
          ],
        ),
      ),
    );
  }

  /// Common click event
  void onTapScreenTitle(String routeName) {
    NavigatorService.pushNamed(routeName);
  }
}
