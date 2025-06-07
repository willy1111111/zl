import 'package:get/get.dart';

import '../../../../../core/app_export.dart';
import './promotion_card_model.dart';

/// This class is used in the [JetBrGamingPromotionsScreen] screen with GetX.
class JetBrGamingPromotionsModel {
  RxList<PromotionCardModel> promotionCards = <PromotionCardModel>[].obs;

  JetBrGamingPromotionsModel();
}
