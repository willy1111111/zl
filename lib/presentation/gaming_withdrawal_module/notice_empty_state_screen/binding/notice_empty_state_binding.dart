import 'package:get/get.dart';
import '../controller/notice_empty_state_controller.dart';
import '../../../core/app_export.dart';

class NoticeEmptyStateBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => NoticeEmptyStateController());
  }
}
