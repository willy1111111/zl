import 'package:get/get.dart';
import '../controller/money_rain_event_controller.dart';
import '../../../../../core/app_export.dart';

class MoneyRainEventBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MoneyRainEventController());
  }
}
