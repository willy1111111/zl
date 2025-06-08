import 'package:get/get.dart';
import '../../../core/app_export.dart';

class ExperienceBonusGameScreenTwoModel {
  Rx<String>? bonusTitle;
  Rx<String>? bonusAmount;
  Rx<bool>? isGameActive;
  Rx<int>? currentLevel;

  ExperienceBonusGameScreenTwoModel({
    this.bonusTitle,
    this.bonusAmount,
    this.isGameActive,
    this.currentLevel,
  });
}
