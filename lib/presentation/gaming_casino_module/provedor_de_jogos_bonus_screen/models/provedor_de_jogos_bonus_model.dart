import '../../../../../core/app_export.dart';

class ProvedorDeJogosBonusModel {
  Rx<String>? title;
  Rx<String>? contentText;
  Rx<String>? balanceAmount;
  Rx<String>? promotionalImage;

  ProvedorDeJogosBonusModel({
    this.title,
    this.contentText,
    this.balanceAmount,
    this.promotionalImage,
  }) {
    title = title ?? '100 Milhões Title'.obs;
    contentText = contentText ??
        'Ends At\nBônus de 20% para novos Jogadores\nBônus de 20% para novos Jogadores\nA plataforma stake9 foi estabelecida há dez anos. Para agradecer aos novos usuários por sua confiança e apoio, preparamos milhões de recompensas em dinheiro para os novos usuários.\nPara cada novo usuário que recarregar a plataforma com sucesso pela primeira vez, a plataforma dará imediatamente uma recompensa de 20%, e a recompensa será depositada diretamente no saldo da conta do novo usuário.\nREQUISITOS E BÔNUS\nLIMITE DE DEPÓSITOS\nBÔNUS\nR\$40\nDescrição das regras:\n• A campanha só está disponível para novos usuários que estão fazendo sua primeira recarga (depósitos de R\$ 40 ou mais);\n• Certifique-se de que seu nome e cartão bancário sejam precisos e exclusivo, se o mesmo usar Ips de redes diferentes para registrar outra conta na plataforma e obter os benefícios, será considerado fraude e sua conta pode ser congelada permanentemente.'
            .obs;
    balanceAmount = balanceAmount ?? '₱1980.00'.obs;
    promotionalImage = promotionalImage ?? 'assets/images/img_image_6.png'.obs;
  }
}
