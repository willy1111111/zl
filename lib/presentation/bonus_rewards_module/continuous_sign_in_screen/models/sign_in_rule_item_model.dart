import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../core/app_export.dart';

class SignInRuleItemModel {
  Rx<String>? bulletIcon;
  Rx<String>? ruleText;
  Rx<String>? highlightText;
  Rx<Color>? highlightColor;

  SignInRuleItemModel({
    this.bulletIcon,
    this.ruleText,
    this.highlightText,
    this.highlightColor,
  });
}
