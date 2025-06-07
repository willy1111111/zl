import 'package:get/get.dart';
import '../models/provedor_de_jogos_bonus_model.dart';
import '../../../../../core/app_export.dart';

class ProvedorDeJogosBonusController extends GetxController {
  Rx<ProvedorDeJogosBonusModel?> provedorDeJogosBonusModel =
      Rx<ProvedorDeJogosBonusModel?>(null);

  @override
  void onInit() {
    super.onInit();
    provedorDeJogosBonusModel.value = ProvedorDeJogosBonusModel();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
