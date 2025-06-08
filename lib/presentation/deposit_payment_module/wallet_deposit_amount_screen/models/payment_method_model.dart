import 'package:get/get.dart';
import '../../../core/app_export.dart';

class PaymentMethodModel {
  Rx<String>? name;
  Rx<bool>? isSelected;

  PaymentMethodModel({
    this.name,
    this.isSelected,
  });
}
