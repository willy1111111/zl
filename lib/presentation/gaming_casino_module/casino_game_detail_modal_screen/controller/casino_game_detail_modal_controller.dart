import 'package:get/get.dart';
import '../models/casino_game_detail_modal_model.dart';
import '../../../../../core/app_export.dart';

class CasinoGameDetailModalController extends GetxController {
  Rx<CasinoGameDetailModalModel?> casinoGameDetailModalModel =
      Rx<CasinoGameDetailModalModel?>(null);

  @override
  void onInit() {
    super.onInit();
    casinoGameDetailModalModel.value = CasinoGameDetailModalModel();
  }

  void onClosePressed() {
    Get.back();
  }

  void onRealPlayPressed() {
    // Handle real play action
    print('Starting real play mode');
    // Add real play logic here
  }

  void onFavoritePressed() {
    // Handle favorite toggle action
    print('Adding to favorites');
    // Add favorite toggle logic here
    // You can toggle the favorite state here
  }

  @override
  void onClose() {
    super.onClose();
  }
}
