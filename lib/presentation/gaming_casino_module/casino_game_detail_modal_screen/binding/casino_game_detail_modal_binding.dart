import 'package:get/get.dart';
import '../controller/casino_game_detail_modal_controller.dart';
import '../../../../../core/app_export.dart';

class CasinoGameDetailModalBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CasinoGameDetailModalController());
  }
}
