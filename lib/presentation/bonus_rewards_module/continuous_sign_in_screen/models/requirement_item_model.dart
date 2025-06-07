import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../core/app_export.dart';

class RequirementItemModel {
  Rx<String>? iconImage;
  Rx<String>? title;
  Rx<Color>? backgroundColor;
  Rx<String>? firstRequirement;
  Rx<String>? secondRequirement;

  RequirementItemModel({
    this.iconImage,
    this.title,
    this.backgroundColor,
    this.firstRequirement,
    this.secondRequirement,
  });
}
