import 'package:get/get.dart';
import '../../../core/app_export.dart';

class ContactModel {
  Rx<String>? phoneNumber;
  Rx<bool>? isHighlighted;

  ContactModel({
    this.phoneNumber,
    this.isHighlighted,
  });
}
