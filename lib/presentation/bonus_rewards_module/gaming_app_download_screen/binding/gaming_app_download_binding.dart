import 'package:get/get.dart';
import '../controller/gaming_app_download_controller.dart';
import '../../../../../core/app_export.dart';

class GamingAppDownloadBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<GamingAppDownloadController>(
      () => GamingAppDownloadController(),
    );
  }
}
