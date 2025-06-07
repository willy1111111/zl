import '../../../../../core/app_export.dart';
import '../models/jet_br_gaming_promotions_model.dart';
import '../models/promotion_card_model.dart';

class JetBrGamingPromotionsController extends GetxController {
  Rx<JetBrGamingPromotionsModel> jetBrGamingPromotionsModelObj =
      JetBrGamingPromotionsModel().obs;

  RxList<PromotionCardModel> promotionCards = <PromotionCardModel>[].obs;

  @override
  void onInit() {
    super.onInit();
    initializePromotionCards();
  }

  void initializePromotionCards() {
    promotionCards.value = [
      PromotionCardModel(
        imageUrl: ImageConstant.img1164x345.obs,
        title: '100 Milhões de Recompensas - Programa de ganha!'.obs,
      ),
      PromotionCardModel(
        imageUrl: ImageConstant.img2164x345.obs,
        title: '100 Milhões de Recompensas - Programa de ganha!'.obs,
      ),
      PromotionCardModel(
        imageUrl: ImageConstant.img3164x345.obs,
        title: '100 Milhões de Recompensas - Programa de ganha!'.obs,
      ),
      PromotionCardModel(
        imageUrl: ImageConstant.img4.obs,
        title: '100 Milhões de Recompensas - Programa de ganha!'.obs,
      ),
      PromotionCardModel(
        imageUrl: ImageConstant.img5164x345.obs,
        title: '100 Milhões de Recompensas - Programa de ganha!'.obs,
      ),
    ];
  }

  void onMoreInfoTap(int index) {
    // Handle more information tap for specific promotion
    print('More info tapped for promotion at index: $index');
  }
}
