import 'package:get/get.dart';

import 'package:flutter/material.dart';
import '../../../../../core/app_export.dart';

class SignInRulesItemModel {
  Rx<String>? iconPath;
  Rx<String>? ruleText;
  Rx<bool>? hasHighlightedText;
  Rx<String>? highlightedText;
  Rx<Color>? highlightedColor;

  SignInRulesItemModel({
    this.iconPath,
    this.ruleText,
    this.hasHighlightedText,
    this.highlightedText,
    this.highlightedColor,
  });
}
