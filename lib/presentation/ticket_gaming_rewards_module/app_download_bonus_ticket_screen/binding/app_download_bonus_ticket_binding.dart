import 'package:get/get.dart';
import '../controller/app_download_bonus_ticket_controller.dart';
import '../../../core/app_export.dart';

class AppDownloadBonusTicketBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AppDownloadBonusTicketController>(
      () => AppDownloadBonusTicketController(),
    );
  }
}
