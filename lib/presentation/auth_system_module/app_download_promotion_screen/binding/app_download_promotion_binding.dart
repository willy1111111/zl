import 'package:get/get.dart';
import '../controller/app_download_promotion_controller.dart';
import '../../../../core/app_export.dart';

class AppDownloadPromotionBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AppDownloadPromotionController());
  }
}
