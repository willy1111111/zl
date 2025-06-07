import 'package:get/get.dart';
import '../../../../../core/app_export.dart';

class SignInRuleItemModel {
  Rx<String>? ruleIcon;
  Rx<String>? ruleText;
  Rx<String>? highlightedNumber;
  Rx<String>? remainingText;
  Rx<bool>? isRedHighlight;

  SignInRuleItemModel({
    this.ruleIcon,
    this.ruleText,
    this.highlightedNumber,
    this.remainingText,
    this.isRedHighlight,
  });
}
