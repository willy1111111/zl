import 'package:get/get.dart';
import '../../../core/app_export.dart';

enum TaskButtonType { green, orange }

class TaskItemModel {
  Rx<String>? icon;
  Rx<String>? title;
  Rx<String>? description;
  Rx<String>? reward;
  Rx<String>? buttonText;
  Rx<TaskButtonType>? buttonType;
  Rx<String>? progress;

  TaskItemModel({
    this.icon,
    this.title,
    this.description,
    this.reward,
    this.buttonText,
    this.buttonType,
    this.progress,
  });
}
