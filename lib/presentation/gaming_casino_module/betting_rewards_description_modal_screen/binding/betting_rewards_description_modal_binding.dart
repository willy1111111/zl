import 'package:get/get.dart';
import '../controller/betting_rewards_description_modal_controller.dart';
import '../../../../../core/app_export.dart';

class BettingRewardsDescriptionModalBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => BettingRewardsDescriptionModalController());
  }
}
