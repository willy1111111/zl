import 'package:get/get.dart';
import '../controller/red_envelope_icon_controller.dart';
import '../../../../core/app_export.dart';

class RedEnvelopeIconBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RedEnvelopeIconController());
  }
}
