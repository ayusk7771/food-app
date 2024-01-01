import '../../../core/app_export.dart';

/// This class is used in the [card_item_widget] screen.
class CardItemModel {
  CardItemModel({
    this.creditCardIcon,
    this.cardText,
    this.id,
  }) {
    creditCardIcon = creditCardIcon ?? ImageConstant.imgBiCreditCard2FrontFill;
    cardText = cardText ?? "Card";
    id = id ?? "";
  }

  String? creditCardIcon;

  String? cardText;

  String? id;
}
