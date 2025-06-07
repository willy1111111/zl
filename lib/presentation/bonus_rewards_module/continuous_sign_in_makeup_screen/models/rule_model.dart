import 'package:get/get.dart';
import '../../../../../core/app_export.dart';

class RuleModel {
  Rx<String>? bulletIcon;
  Rx<String>? ruleText;
  Rx<bool>? hasHighlight;
  Rx<String>? highlightText;

  RuleModel({
    this.bulletIcon,
    this.ruleText,
    this.hasHighlight,
    this.highlightText,
  });
}
