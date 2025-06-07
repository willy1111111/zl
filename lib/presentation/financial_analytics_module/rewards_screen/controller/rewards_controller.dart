import 'package:get/get.dart';
import '../models/rewards_model.dart';
import '../../../core/app_export.dart';

class RewardsController extends GetxController {
  Rx<RewardsModel> rewardsModelObj = RewardsModel().obs;

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void onClosePressed() {
    Get.back();
  }
}
