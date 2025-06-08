import 'package:get/get.dart';
import '../../../core/app_export.dart';

class NaradCasinoHomeModel {
  Rx<String>? balanceAmount;
  Rx<int>? selectedCategoryIndex;
  Rx<int>? selectedBottomNavIndex;

  NaradCasinoHomeModel({
    this.balanceAmount,
    this.selectedCategoryIndex,
    this.selectedBottomNavIndex,
  });
}
