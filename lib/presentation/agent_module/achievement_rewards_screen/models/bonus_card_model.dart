import 'package:get/get.dart';
import '../../../../core/app_export.dart';

/// This class is used in the [bonus_card_widget] component with GetX.

class BonusCardModel {
  // Observable variables for reactive state management
  Rx<String>? title;
  Rx<String>? amount;
  Rx<int>? width;

  BonusCardModel({
    this.title,
    this.amount,
    this.width,
  });
}
