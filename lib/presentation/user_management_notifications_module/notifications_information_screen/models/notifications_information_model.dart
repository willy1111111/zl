import 'package:get/get.dart';
import '../../../core/app_export.dart';

/// This class is used in the [NotificationsInformationScreen] screen with GetX.

class NotificationsInformationModel {
  Rx<String>? title;
  Rx<String>? date;
  Rx<String>? content;

  NotificationsInformationModel({
    this.title,
    this.date,
    this.content,
  }) {
    title = title ?? 'Information title Information'.obs;
    date = date ?? '2023-03-05'.obs;
    content = content ??
        'Participe do sorteio da promoção de depósito! Complete 2 dias consecutivos de depósito durante o ciclo e você estará concorrendo ao grande prêmio de ₱ 7777! Complete o depósito por 3 dias seguidos e você terá a chance de ganhar um IPHONE 14 extra!\n\nPrêmio Super Grande: IPHONE 14 256GB\nGrande Prêmio: ₱ 7777 - 1 ganhador\nSegundo Prêmio: ₱ 777 - 5 ganhadores\nTerceiro Prêmio: ₱ 77-10 ganhadores\nSorteio:₱ 1-10 ，20% dos membros participantes\n\nPeríodo da promoção: 12/06/2023 00:00 - 14/06/2023 23:59'
            .obs;
  }
}
