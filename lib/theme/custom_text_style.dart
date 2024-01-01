import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyLargeBlack900 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.black900.withOpacity(0.55),
      );
  static get bodyLargeGray500 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.gray500,
      );
  static get bodyLargePoppins => theme.textTheme.bodyLarge!.poppins;
  static get bodyLargePoppinsBlack900 =>
      theme.textTheme.bodyLarge!.poppins.copyWith(
        color: appTheme.black900.withOpacity(0.55),
      );
  static get bodyLargePrimary => theme.textTheme.bodyLarge!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get bodyMedium13 => theme.textTheme.bodyMedium!.copyWith(
        fontSize: 13.fSize,
      );
  static get bodyMediumBlack900 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.black900,
      );
  static get bodyMediumOrange700 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.orange700,
      );
  static get bodyMediumPoppins => theme.textTheme.bodyMedium!.poppins;
  static get bodyMediumPrimary => theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get bodyMediumSFProRoundedPrimary =>
      theme.textTheme.bodyMedium!.sFProRounded.copyWith(
        color: theme.colorScheme.primary,
      );
  static get bodyMedium_1 => theme.textTheme.bodyMedium!;
  // Display text style
  static get displaySmallPoppins =>
      theme.textTheme.displaySmall!.poppins.copyWith(
        fontWeight: FontWeight.w500,
      );
  static get displaySmallSFProRounded =>
      theme.textTheme.displaySmall!.sFProRounded.copyWith(
        fontWeight: FontWeight.w700,
      );
  // Headline text style
  static get headlineMediumPoppins =>
      theme.textTheme.headlineMedium!.poppins.copyWith(
        fontWeight: FontWeight.w500,
      );
  static get headlineMediumSFProRounded =>
      theme.textTheme.headlineMedium!.sFProRounded;
  static get headlineMediumSFProRoundedBold =>
      theme.textTheme.headlineMedium!.sFProRounded.copyWith(
        fontWeight: FontWeight.w700,
      );
  // Title text style
  static get titleLargeBlack900 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.black900.withOpacity(0.67),
      );
  static get titleLargePoppins => theme.textTheme.titleLarge!.poppins.copyWith(
        fontSize: 20.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleLargePrimary => theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w700,
      );
  static get titleLargeSFProText => theme.textTheme.titleLarge!.sFProText;
  static get titleMedium17 => theme.textTheme.titleMedium!.copyWith(
        fontSize: 17.fSize,
      );
  static get titleMediumDeeporangeA40001 =>
      theme.textTheme.titleMedium!.copyWith(
        color: appTheme.deepOrangeA40001,
        fontSize: 17.fSize,
      );
  static get titleMediumGray10002 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray10002,
        fontSize: 17.fSize,
      );
  static get titleMediumMedium => theme.textTheme.titleMedium!.copyWith(
        fontSize: 17.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumPoppinsBlack900 =>
      theme.textTheme.titleMedium!.poppins.copyWith(
        color: appTheme.black900.withOpacity(0.53),
        fontSize: 17.fSize,
      );
  static get titleMediumPoppinsOnPrimary =>
      theme.textTheme.titleMedium!.poppins.copyWith(
        color: theme.colorScheme.onPrimary,
        fontSize: 17.fSize,
      );
  static get titleMediumPrimary => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 17.fSize,
      );
  static get titleMediumSFProRounded =>
      theme.textTheme.titleMedium!.sFProRounded.copyWith(
        fontSize: 17.fSize,
      );
  static get titleMediumSFProRoundedBlack900 =>
      theme.textTheme.titleMedium!.sFProRounded.copyWith(
        color: appTheme.black900.withOpacity(0.53),
        fontSize: 17.fSize,
      );
  static get titleMediumSFProRoundedPrimary =>
      theme.textTheme.titleMedium!.sFProRounded.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 17.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallGray100 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray100,
      );
  static get titleSmallSFProTextBlack900 =>
      theme.textTheme.titleSmall!.sFProText.copyWith(
        color: appTheme.black900.withOpacity(0.49),
      );
}

extension on TextStyle {
  TextStyle get sFProText {
    return copyWith(
      fontFamily: 'SF Pro Text',
    );
  }

  TextStyle get poppins {
    return copyWith(
      fontFamily: 'Poppins',
    );
  }

  TextStyle get sFProRounded {
    return copyWith(
      fontFamily: 'SF Pro Rounded',
    );
  }
}
