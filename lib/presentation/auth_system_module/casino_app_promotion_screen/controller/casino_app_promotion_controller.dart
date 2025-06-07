import '../../../../core/app_export.dart';

class CasinoAppPromotionController extends GetxController {
  RxInt currentPage = 3.obs;
  RxBool isLoading = false.obs;

  @override
  void onInit() {
    super.onInit();
    // Initialize any required data
  }

  @override
  void onClose() {
    super.onClose();
  }

  void onPreviousPressed() {
    if (currentPage.value > 1) {
      currentPage.value--;
    }
  }

  void onNextPressed() {
    if (currentPage.value < 8) {
      currentPage.value++;
    }
  }

  void onMoreButtonPressed() {
    // Handle download app action
    Get.snackbar(
      'Download',
      'JBET88 app download initiated',
      backgroundColor: appTheme.colorFF76CD,
      colorText: appTheme.whiteCustom,
    );
  }

  void onClosePressed() {
    Get.back();
  }
}
