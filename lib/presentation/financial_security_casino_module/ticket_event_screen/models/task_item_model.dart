import 'package:get/get.dart';
import '../../../core/app_export.dart';

enum TaskButtonType { green, orange }

class TaskItemModel {
  Rx<String>? title;
  Rx<String>? description;
  Rx<String>? rewardText;
  Rx<String>? iconPath;
  Rx<String>? buttonText;
  Rx<TaskButtonType>? buttonType;
  Rx<String>? progressText;

  TaskItemModel({
    this.title,
    this.description,
    this.rewardText,
    this.iconPath,
    this.buttonText,
    this.buttonType,
    this.progressText,
  });
}
