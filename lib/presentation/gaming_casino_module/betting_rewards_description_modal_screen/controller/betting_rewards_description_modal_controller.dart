import 'package:get/get.dart';
import '../models/betting_rewards_description_modal_model.dart';
import '../../../../../core/app_export.dart';

class BettingRewardsDescriptionModalController extends GetxController {
  Rx<BettingRewardsDescriptionModalModel> bettingRewardsDescriptionModalModel =
      BettingRewardsDescriptionModalModel().obs;

  @override
  void onInit() {
    super.onInit();
  }

  void onClosePressed() {
    Get.back();
  }

  void onConfirmPressed() {
    Get.back();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
