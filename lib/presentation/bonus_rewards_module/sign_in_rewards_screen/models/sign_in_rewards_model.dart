import 'package:get/get.dart';
import '../../../../../core/app_export.dart';

class SignInRewardsModel {
  Rx<String>? totalSignIns;
  Rx<String>? totalBonus;
  Rx<String>? continuousSignIns;
  Rx<String>? currentBonus;
  Rx<String>? extraBonus;
  Rx<bool>? isSignInEnabled;
  Rx<int>? remainingReSignments;
  Rx<int>? requiredDeposits;
  Rx<String>? requiredAmount;

  SignInRewardsModel({
    this.totalSignIns,
    this.totalBonus,
    this.continuousSignIns,
    this.currentBonus,
    this.extraBonus,
    this.isSignInEnabled,
    this.remainingReSignments,
    this.requiredDeposits,
    this.requiredAmount,
  });
}
