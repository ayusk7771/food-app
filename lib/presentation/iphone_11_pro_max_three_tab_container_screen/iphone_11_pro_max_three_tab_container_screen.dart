import 'models/iphone_11_pro_max_three_tab_container_model.dart';
import 'package:ayush_s_application1/core/app_export.dart';
import 'package:ayush_s_application1/presentation/iphone_11_pro_max_three_page/iphone_11_pro_max_three_page.dart';
import 'package:ayush_s_application1/widgets/app_bar/appbar_leading_image.dart';
import 'package:ayush_s_application1/widgets/app_bar/appbar_trailing_image.dart';
import 'package:ayush_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:ayush_s_application1/widgets/custom_search_view.dart';
import 'package:flutter/material.dart';
import 'provider/iphone_11_pro_max_three_tab_container_provider.dart';

class Iphone11ProMaxThreeTabContainerScreen extends StatefulWidget {
  const Iphone11ProMaxThreeTabContainerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Iphone11ProMaxThreeTabContainerScreenState createState() =>
      Iphone11ProMaxThreeTabContainerScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Iphone11ProMaxThreeTabContainerProvider(),
      child: Iphone11ProMaxThreeTabContainerScreen(),
    );
  }
}

class Iphone11ProMaxThreeTabContainerScreenState
    extends State<Iphone11ProMaxThreeTabContainerScreen>
    with TickerProviderStateMixin {
  late TabController tabviewController;

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.gray10004,
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 26.v),
              Container(
                width: 185.h,
                margin: EdgeInsets.only(left: 50.h),
                child: Text(
                  "msg_delicious_food".tr,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: CustomTextStyles.displaySmallSFProRounded,
                ),
              ),
              SizedBox(height: 21.v),
              Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 50.h),
                  child: Selector<Iphone11ProMaxThreeTabContainerProvider,
                      TextEditingController?>(
                    selector: (
                      context,
                      provider,
                    ) =>
                        provider.searchController,
                    builder: (context, searchController, child) {
                      return CustomSearchView(
                        controller: searchController,
                        hintText: "lbl_search".tr,
                        alignment: Alignment.center,
                      );
                    },
                  ),
                ),
              ),
              SizedBox(height: 45.v),
              _buildTabview(context),
              SizedBox(
                height: 515.v,
                child: TabBarView(
                  controller: tabviewController,
                  children: [
                    Iphone11ProMaxThreePage(),
                    Iphone11ProMaxThreePage(),
                    Iphone11ProMaxThreePage(),
                    Iphone11ProMaxThreePage(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 76.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgVector,
        margin: EdgeInsets.only(
          left: 54.h,
          top: 25.v,
          bottom: 17.v,
        ),
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgShoppingCart,
          margin: EdgeInsets.symmetric(
            horizontal: 41.h,
            vertical: 16.v,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildTabview(BuildContext context) {
    return Container(
      height: 33.v,
      width: 346.h,
      child: TabBar(
        controller: tabviewController,
        isScrollable: true,
        labelColor: theme.colorScheme.primary,
        labelStyle: TextStyle(
          fontSize: 17.fSize,
          fontFamily: 'SF Pro Text',
          fontWeight: FontWeight.w400,
        ),
        unselectedLabelColor: appTheme.gray500,
        unselectedLabelStyle: TextStyle(
          fontSize: 17.fSize,
          fontFamily: 'SF Pro Text',
          fontWeight: FontWeight.w400,
        ),
        indicatorColor: theme.colorScheme.primary,
        tabs: [
          Tab(
            child: Text(
              "lbl_foods".tr,
            ),
          ),
          Tab(
            child: Text(
              "lbl_drinks".tr,
            ),
          ),
          Tab(
            child: Text(
              "lbl_snacks".tr,
            ),
          ),
          Tab(
            child: Text(
              "lbl_sauce".tr,
            ),
          ),
        ],
      ),
    );
  }
}
