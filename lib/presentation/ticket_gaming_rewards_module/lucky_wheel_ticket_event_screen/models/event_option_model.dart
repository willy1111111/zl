import 'package:get/get.dart';
import '../../../../core/app_export.dart';

class EventOptionModel {
  Rx<String>? imagePath;
  Rx<String>? title;
  Rx<String>? routeName;
  Rx<bool>? isSelected;

  EventOptionModel({
    this.imagePath,
    this.title,
    this.routeName,
    this.isSelected,
  });
}
