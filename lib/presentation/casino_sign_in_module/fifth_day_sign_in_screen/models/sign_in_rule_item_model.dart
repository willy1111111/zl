import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../core/app_export.dart';

class SignInRuleItemModel {
  Rx<String>? pointIcon;
  Rx<String>? ruleText;
  Rx<String>? highlightText;
  Rx<Color>? highlightColor;
  Rx<String>? suffixText;

  SignInRuleItemModel({
    this.pointIcon,
    this.ruleText,
    this.highlightText,
    this.highlightColor,
    this.suffixText,
  });
}
