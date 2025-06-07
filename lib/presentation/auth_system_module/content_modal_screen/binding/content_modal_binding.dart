import 'package:get/get.dart';
import '../controller/content_modal_controller.dart';
import '../../../../core/app_export.dart';

class ContentModalBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ContentModalController());
  }
}
