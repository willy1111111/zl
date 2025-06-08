import 'package:get/get.dart';
import '../controller/spiritual_radiance_controller.dart';
import '../../../core/app_export.dart';

class SpiritualRadianceBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SpiritualRadianceController());
  }
}
