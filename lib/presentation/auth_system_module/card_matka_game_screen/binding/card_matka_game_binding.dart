import 'package:get/get.dart';
import '../controller/card_matka_game_controller.dart';
import '../../../../core/app_export.dart';

class CardMatkaGameBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CardMatkaGameController());
  }
}
