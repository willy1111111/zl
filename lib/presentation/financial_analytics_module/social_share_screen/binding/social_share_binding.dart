import 'package:get/get.dart';
import '../controller/social_share_controller.dart';
import '../../../core/app_export.dart';

class SocialShareBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SocialShareController());
  }
}
