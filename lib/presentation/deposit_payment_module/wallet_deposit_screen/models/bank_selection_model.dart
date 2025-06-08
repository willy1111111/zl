import 'package:get/get.dart';
import '../../../core/app_export.dart';

class BankSelectionModel {
  Rx<String>? name;
  Rx<bool>? isSelected;
  Rx<bool>? hasCheckIcon;

  BankSelectionModel({
    this.name,
    this.isSelected,
    this.hasCheckIcon,
  });
}
