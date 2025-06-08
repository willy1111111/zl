import 'package:get/get.dart';
import '../../../core/app_export.dart';

enum TaskButtonType { deposit, claim, view }

/// This class is used for task items in the [TicketEventRewardsScreenThree] screen with GetX.
class TaskItemModel {
  Rx<String>? icon;
  Rx<String>? title;
  Rx<String>? description;
  Rx<String>? rewardText;
  Rx<String>? buttonText;
  Rx<TaskButtonType>? buttonType;
  Rx<String>? progressText;

  TaskItemModel({
    this.icon,
    this.title,
    this.description,
    this.rewardText,
    this.buttonText,
    this.buttonType,
    this.progressText,
  });
}
