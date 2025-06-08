import 'package:get/get.dart';
import '../controller/jeetbaji_gaming_home_controller.dart';
import '../../../core/app_export.dart';

class JeetbajiGamingHomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => JeetbajiGamingHomeController());
  }
}
