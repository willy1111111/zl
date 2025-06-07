import 'package:get/get.dart';
import '../models/app_download_model.dart';
import '../../../../../core/app_export.dart';

class AppDownloadController extends GetxController {
  Rx<AppDownloadModel> appDownloadModel = AppDownloadModel().obs;

  @override
  void onInit() {
    super.onInit();
    appDownloadModel.value = AppDownloadModel();
  }

  void downloadAndroid() {
    // Handle Android app download
    Get.snackbar(
      'Download Started',
      'Android APK download has started',
      snackPosition: SnackPosition.BOTTOM,
    );
  }

  void downloadIOS() {
    // Handle iOS app download
    Get.snackbar(
      'Redirecting',
      'Redirecting to App Store',
      snackPosition: SnackPosition.BOTTOM,
    );
  }

  @override
  void onClose() {
    super.onClose();
  }
}
