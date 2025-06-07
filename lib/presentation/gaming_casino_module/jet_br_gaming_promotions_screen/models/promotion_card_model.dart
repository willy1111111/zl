import 'package:get/get.dart';
import '../../../../../core/app_export.dart';
import '../widgets/promotion_card_widget.dart';

/// This class is used in the [PromotionCardWidget] widget with GetX.
class PromotionCardModel {
  Rx<String>? imageUrl;
  Rx<String>? title;

  PromotionCardModel({
    this.imageUrl,
    this.title,
  });
}
