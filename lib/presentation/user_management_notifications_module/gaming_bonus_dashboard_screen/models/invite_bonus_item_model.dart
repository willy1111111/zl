import 'package:get/get.dart';
import '../../../core/app_export.dart';

class InviteBonusItemModel {
  Rx<String>? iconPath;
  Rx<String>? title;
  Rx<String>? totalAmount;
  Rx<String>? inviteRegistration;
  Rx<String>? inviteDeposit;
  Rx<String>? invitationQualified;
  Rx<String>? bettingRebate;
  Rx<String>? inviteesBonus;
  Rx<String>? actionText;

  InviteBonusItemModel({
    this.iconPath,
    this.title,
    this.totalAmount,
    this.inviteRegistration,
    this.inviteDeposit,
    this.invitationQualified,
    this.bettingRebate,
    this.inviteesBonus,
    this.actionText,
  });
}
