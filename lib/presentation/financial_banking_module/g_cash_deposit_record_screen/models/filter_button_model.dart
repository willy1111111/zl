import 'package:get/get.dart';
import '../../../core/app_export.dart';

class FilterButtonModel {
  Rx<String>? title;
  Rx<bool>? isSelected;

  FilterButtonModel({
    this.title,
    this.isSelected,
  });
}
