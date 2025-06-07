import 'package:flutter/material.dart';

import '../../../../core/app_export.dart';
import '../../../../widgets/custom_app_bar.dart';
import '../../../../widgets/custom_image_view.dart';
import './controller/provedor_de_jogos_bonus_controller.dart';

class ProvedorDeJogosBonusScreen
    extends GetWidget<ProvedorDeJogosBonusController> {
  const ProvedorDeJogosBonusScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.colorFF1E20,
      appBar: _buildAppBar(),
      body: Container(
        width: double.maxFinite,
        child: Column(
          children: [
            SizedBox(height: 12.h),
            _buildMainContent(),
          ],
        ),
      ),
    );
  }

  /// Builds the app bar section
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      title: 'Provedor de jogos',
      showBackButton: true,
      showStatusBar: true,
      balanceAmount: '₱1980.00',
      balanceIcon: ImageConstant.imgGroup736,
      actionIcon: ImageConstant.img1LightGreenA700,
      backgroundColor: appTheme.colorFF1B1C,
      onBackPressed: () {
        Get.back();
      },
    );
  }

  /// Builds the main content section
  Widget _buildMainContent() {
    return Expanded(
      child: Container(
        width: 345.h,
        margin: EdgeInsets.symmetric(horizontal: 15.h),
        padding: EdgeInsets.all(0),
        decoration: BoxDecoration(
          color: appTheme.colorFF2528,
          borderRadius: BorderRadius.circular(8.h),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildPromotionalBanner(),
            SizedBox(height: 13.h),
            _buildTitleSection(),
            SizedBox(height: 10.h),
            _buildContentSection(),
          ],
        ),
      ),
    );
  }

  /// Builds the promotional banner image
  Widget _buildPromotionalBanner() {
    return Container(
      width: 345.h,
      height: 180.h,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8.h),
        child: CustomImageView(
          imagePath: ImageConstant.imgImage6,
          height: 180.h,
          width: 345.h,
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  /// Builds the title section
  Widget _buildTitleSection() {
    return Container(
      margin: EdgeInsets.only(left: 12.h),
      child: Obx(() => Text(
            controller.provedorDeJogosBonusModel.value?.title?.value ??
                '100 Milhões Title',
            style: TextStyleHelper.instance.title16BoldArial
                .copyWith(color: appTheme.whiteCustom),
          )),
    );
  }

  /// Builds the content section with bonus details
  Widget _buildContentSection() {
    return Expanded(
      child: Container(
        margin: EdgeInsets.only(left: 11.h, right: 23.h),
        child: SingleChildScrollView(
          child: Obx(() => Text(
                controller
                        .provedorDeJogosBonusModel.value?.contentText?.value ??
                    'Ends At\nBônus de 20% para novos Jogadores\nBônus de 20% para novos Jogadores\nA plataforma stake9 foi estabelecida há dez anos. Para agradecer aos novos usuários por sua confiança e apoio, preparamos milhões de recompensas em dinheiro para os novos usuários.\nPara cada novo usuário que recarregar a plataforma com sucesso pela primeira vez, a plataforma dará imediatamente uma recompensa de 20%, e a recompensa será depositada diretamente no saldo da conta do novo usuário.\nREQUISITOS E BÔNUS\nLIMITE DE DEPÓSITOS\nBÔNUS\nR\$40\nDescrição das regras:\n• A campanha só está disponível para novos usuários que estão fazendo sua primeira recarga (depósitos de R\$ 40 ou mais);\n• Certifique-se de que seu nome e cartão bancário sejam precisos e exclusivo, se o mesmo usar Ips de redes diferentes para registrar outra conta na plataforma e obter os benefícios, será considerado fraude e sua conta pode ser congelada permanentemente.',
                style:
                    TextStyleHelper.instance.body15Arial.copyWith(height: 1.2),
              )),
        ),
      ),
    );
  }
}
