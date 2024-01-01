import '../models/productcardlist_item_model.dart';
import 'package:ayush_s_application1/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ProductcardlistItemWidget extends StatelessWidget {
  ProductcardlistItemWidget(
    this.productcardlistItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ProductcardlistItemModel productcardlistItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 17.h,
        vertical: 16.v,
      ),
      decoration: AppDecoration.outlineBlack900.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder20,
      ),
      child: Row(
        children: [
          SizedBox(
            height: 69.adaptSize,
            width: 69.adaptSize,
            child: Stack(
              alignment: Alignment.center,
              children: [
                CustomImageView(
                  imagePath: productcardlistItemModelObj?.image,
                  height: 16.adaptSize,
                  width: 16.adaptSize,
                  alignment: Alignment.centerRight,
                  margin: EdgeInsets.only(right: 6.h),
                ),
                CustomImageView(
                  imagePath: productcardlistItemModelObj?.image1,
                  height: 69.adaptSize,
                  width: 69.adaptSize,
                  radius: BorderRadius.circular(
                    34.h,
                  ),
                  alignment: Alignment.center,
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 15.h,
              top: 12.v,
              bottom: 9.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  productcardlistItemModelObj.title!,
                  style: CustomTextStyles.titleMediumSFProRounded,
                ),
                SizedBox(height: 9.v),
                Text(
                  productcardlistItemModelObj.price!,
                  style: theme.textTheme.titleSmall,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
