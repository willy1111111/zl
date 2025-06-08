import 'package:get/get.dart';
import '../../../core/app_export.dart';
import '../widgets/task_card_widget.dart';

enum TaskButtonType { deposit, claim, view }

/// This class is used in the [TaskCardWidget] component with GetX.

class TaskItemModel {
  Rx<String>? icon;
  Rx<String>? title;
  Rx<String>? description;
  Rx<String>? rewardText;
  Rx<String>? progressText;
  Rx<String>? buttonText;
  Rx<TaskButtonType>? buttonType;
  Rx<bool>? isCompleted;

  TaskItemModel({
    this.icon,
    this.title,
    this.description,
    this.rewardText,
    this.progressText,
    this.buttonText,
    this.buttonType,
    this.isCompleted,
  });
}
