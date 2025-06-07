import 'package:get/get.dart';
import '../controller/provedor_de_jogos_bonus_controller.dart';
import '../../../../../core/app_export.dart';

class ProvedorDeJogosBonusBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ProvedorDeJogosBonusController());
  }
}
