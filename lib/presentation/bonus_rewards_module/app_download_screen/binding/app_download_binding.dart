import 'package:get/get.dart';
import '../controller/app_download_controller.dart';
import '../../../../../core/app_export.dart';

class AppDownloadBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AppDownloadController());
  }
}
