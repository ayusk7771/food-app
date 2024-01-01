import '../../../core/app_export.dart';

/// This class is used in the [productcardlist_item_widget] screen.
class ProductcardlistItemModel {
  ProductcardlistItemModel({
    this.image,
    this.image1,
    this.title,
    this.price,
    this.id,
  }) {
    image = image ?? ImageConstant.imgBiCreditCard2FrontFill;
    image1 = image1 ?? ImageConstant.imgImage269x69;
    title = title ?? "Veggie tomato mix";
    price = price ?? "#1,900";
    id = id ?? "";
  }

  String? image;

  String? image1;

  String? title;

  String? price;

  String? id;
}
