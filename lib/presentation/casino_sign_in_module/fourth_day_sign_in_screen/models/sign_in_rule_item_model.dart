import 'package:get/get.dart';
import '../../../../../core/app_export.dart';

class SignInRuleItemModel {
  Rx<String>? bulletIcon;
  Rx<String>? ruleText;
  Rx<String>? highlightText;
  Rx<String>? additionalText;
  Rx<int>? highlightColor;
  Rx<int>? bulletIconHeight;
  Rx<int>? bulletIconWidth;

  SignInRuleItemModel({
    this.bulletIcon,
    this.ruleText,
    this.highlightText,
    this.additionalText,
    this.highlightColor,
    this.bulletIconHeight,
    this.bulletIconWidth,
  }) {
    bulletIcon = bulletIcon ?? ''.obs;
    ruleText = ruleText ?? ''.obs;
    highlightText = highlightText ?? ''.obs;
    additionalText = additionalText ?? ''.obs;
    highlightColor = highlightColor ?? 0xFF51A0FF.obs;
    bulletIconHeight = bulletIconHeight ?? 12.obs;
    bulletIconWidth = bulletIconWidth ?? 11.obs;
  }
}
