import 'package:get/get.dart';
import '../../../core/app_export.dart';

enum TaskType {
  simple,
  withProgress,
  withSubtitle,
}

class TaskItemModel {
  Rx<String>? title;
  Rx<String>? highlightedText;
  Rx<String>? subtitle;
  Rx<String>? subtitleHighlight;
  Rx<String>? buttonText;
  TaskType? taskType;
  Rx<bool>? isCompleted;
  Rx<double>? progressValue;
  Rx<String>? progressText;
  Rx<String>? statusText;

  TaskItemModel({
    this.title,
    this.highlightedText,
    this.subtitle,
    this.subtitleHighlight,
    this.buttonText,
    this.taskType,
    this.isCompleted,
    this.progressValue,
    this.progressText,
    this.statusText,
  });
}
