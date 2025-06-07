import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../models/invitation_bonus_model.dart';
import '../models/bonus_card_model.dart';
import '../../../../core/app_export.dart';

class InvitationBonusController extends GetxController {
  Rx<InvitationBonusModel> invitationBonusModel = InvitationBonusModel().obs;

  RxList<BonusCardModel> bonusCards = <BonusCardModel>[].obs;

  @override
  void onInit() {
    super.onInit();
    _initializeBonusCards();
  }

  void _initializeBonusCards() {
    bonusCards.value = [
      BonusCardModel(
        title: 'Qualified Bonus'.obs,
        amount: '+ ₱168'.obs,
        titleColor: Color(0xFF2B450B).obs,
        amountColor: Color(0xFF233F00).obs,
      ),
      BonusCardModel(
        title: 'Achievement Reward'.obs,
        amount: '+ ₱88888'.obs,
        titleColor: Color(0xFF233F00).obs,
        amountColor: Color(0xFF233F00).obs,
      ),
      BonusCardModel(
        title: 'Deposit Rebate'.obs,
        amount: '1%'.obs,
        titleColor: Color(0xFF2B450B).obs,
        amountColor: Color(0xFF233F00).obs,
      ),
      BonusCardModel(
        title: 'Betting Rebate'.obs,
        amount: '0.8%'.obs,
        titleColor: Color(0xFF2B450A).obs,
        amountColor: Color(0xFF233F00).obs,
      ),
    ];
  }

  void onCloseTap() {
    Get.back();
  }
}
