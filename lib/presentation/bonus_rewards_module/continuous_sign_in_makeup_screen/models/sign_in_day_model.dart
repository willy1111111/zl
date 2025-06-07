import 'package:get/get.dart';
import '../../../../../core/app_export.dart';

class SignInDayModel {
  Rx<String>? day;
  Rx<String>? amount;
  Rx<bool>? isCompleted;
  Rx<bool>? isActive;
  Rx<String>? coinIcon;
  Rx<String>? checkIcon;
  Rx<String>? rewardIcon;
  Rx<String>? arrowIcon;

  SignInDayModel({
    this.day,
    this.amount,
    this.isCompleted,
    this.isActive,
    this.coinIcon,
    this.checkIcon,
    this.rewardIcon,
    this.arrowIcon,
  });
}
