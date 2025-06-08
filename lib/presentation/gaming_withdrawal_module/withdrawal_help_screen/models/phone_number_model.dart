import 'package:get/get.dart';
import '../../../core/app_export.dart';

class PhoneNumberModel {
  Rx<String>? number;
  Rx<bool>? isHighlighted;

  PhoneNumberModel({
    this.number,
    this.isHighlighted,
  });
}
