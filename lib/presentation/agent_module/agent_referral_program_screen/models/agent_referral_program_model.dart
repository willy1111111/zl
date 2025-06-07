import 'package:get/get.dart';
import '../../../../core/app_export.dart';

/// This class is used in the [agent_referral_program_screen] screen with GetX.

class AgentReferralProgramModel {
  Rx<String>? number;
  Rx<String>? title;
  Rx<String>? amount;
  Rx<String>? subtitle;
  Rx<String>? backgroundImagePath;
  Rx<String>? expandIconPath;
  Rx<bool>? isMultiLine;
  Rx<bool>? isAmountFirst;

  AgentReferralProgramModel({
    this.number,
    this.title,
    this.amount,
    this.subtitle,
    this.backgroundImagePath,
    this.expandIconPath,
    this.isMultiLine,
    this.isAmountFirst,
  });
}
