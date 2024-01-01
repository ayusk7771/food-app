import '../models/productcard_item_model.dart';
import 'package:ayush_s_application1/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ProductcardItemWidget extends StatelessWidget {
  ProductcardItemWidget(
    this.productcardItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ProductcardItemModel productcardItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 321.v,
      width: 220.h,
      margin: EdgeInsets.only(top: 17.v),
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 52.h,
                vertical: 36.v,
              ),
              decoration: AppDecoration.outlineOnPrimaryContainer.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder30,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(height: 106.v),
                  Opacity(
                    opacity: 0.9,
                    child: SizedBox(
                      width: 110.h,
                      child: Text(
                        productcardItemModelObj.title!,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                        style: CustomTextStyles.titleLargeBlack900.copyWith(
                          height: 1.01,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 22.v),
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      productcardItemModelObj.price!,
                      style: CustomTextStyles.titleMediumSFProRoundedPrimary,
                    ),
                  ),
                ],
              ),
            ),
          ),
          CustomImageView(
            imagePath: productcardItemModelObj?.image,
            height: 164.adaptSize,
            width: 164.adaptSize,
            radius: BorderRadius.circular(
              82.h,
            ),
            alignment: Alignment.topCenter,
          ),
        ],
      ),
    );
  }
}
