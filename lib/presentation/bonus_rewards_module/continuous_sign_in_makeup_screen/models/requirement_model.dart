import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../core/app_export.dart';

class RequirementModel {
  Rx<String>? icon;
  Rx<String>? title;
  Rx<String>? description;
  Rx<Color>? backgroundColor;

  RequirementModel({
    this.icon,
    this.title,
    this.description,
    this.backgroundColor,
  });
}
