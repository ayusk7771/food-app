import '../models/card_item_model.dart';
import 'package:ayush_s_application1/core/app_export.dart';
import 'package:ayush_s_application1/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CardItemWidget extends StatelessWidget {
  CardItemWidget(
    this.cardItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  CardItemModel cardItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.only(
            top: 11.v,
            bottom: 29.v,
          ),
          padding: EdgeInsets.all(3.h),
          decoration: AppDecoration.outlinePrimary.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder7,
          ),
          child: Container(
            height: 7.adaptSize,
            width: 7.adaptSize,
            decoration: BoxDecoration(
              color: theme.colorScheme.primary,
              borderRadius: BorderRadius.circular(
                3.h,
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 15.h,
            bottom: 15.v,
          ),
          child: CustomIconButton(
            height: 40.adaptSize,
            width: 40.adaptSize,
            padding: EdgeInsets.all(11.h),
            child: CustomImageView(
              imagePath: cardItemModelObj?.creditCardIcon,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 11.h,
            top: 9.v,
            bottom: 25.v,
          ),
          child: Text(
            cardItemModelObj.cardText!,
            style: theme.textTheme.bodyLarge,
          ),
        ),
      ],
    );
  }
}
