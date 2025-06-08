import 'package:get/get.dart';
import '../../../core/app_export.dart';

enum TaskType { simple, progress, complex }

enum TaskButtonVariant { gold, dark }

class TaskItemModel {
  Rx<String>? title;
  Rx<String>? highlightText;
  Rx<String>? buttonText;
  Rx<TaskButtonVariant>? buttonVariant;
  Rx<TaskType>? taskType;
  Rx<String>? progressPercent;
  Rx<String>? progressCount;
  Rx<double>? progressValue;
  Rx<String>? currentBet;
  Rx<String>? description;

  TaskItemModel({
    this.title,
    this.highlightText,
    this.buttonText,
    this.buttonVariant,
    this.taskType,
    this.progressPercent,
    this.progressCount,
    this.progressValue,
    this.currentBet,
    this.description,
  });
}
