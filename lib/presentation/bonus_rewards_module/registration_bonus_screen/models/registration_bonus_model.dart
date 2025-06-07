import 'package:get/get.dart';
import '../../../../../core/app_export.dart';

/// This class is used in the [RegistrationBonusScreen] screen with GetX.

class RegistrationBonusModel {
  Rx<String>? logoPath;
  Rx<String>? balance;
  Rx<String>? currency;
  Rx<String>? selectedDateRange;
  Rx<String>? totalRegistrationBonus;
  Rx<String>? totalUsersText;

  RegistrationBonusModel({
    this.logoPath,
    this.balance,
    this.currency,
    this.selectedDateRange,
    this.totalRegistrationBonus,
    this.totalUsersText,
  });
}
