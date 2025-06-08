import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../core/app_export.dart';

class BonusCardItemModel {
  RxList<Rx<String>> iconImages = <Rx<String>>[].obs;
  RxList<Rx<Offset>> iconPositions = <Rx<Offset>>[].obs;
  RxList<Rx<Size>> iconSizes = <Rx<Size>>[].obs;
  Rx<String>? experienceText;
  Rx<String>? title;
  Rx<String>? description;
  Rx<String>? amount;
  Rx<String>? buttonText;
  Rx<bool>? isClaimable;
  Rx<Color>? backgroundColor;
  Rx<Color>? borderColor;
  Rx<Color>? iconBorderColor;

  BonusCardItemModel({
    List<Rx<String>>? iconImages,
    List<Rx<Offset>>? iconPositions,
    List<Rx<Size>>? iconSizes,
    this.experienceText,
    this.title,
    this.description,
    this.amount,
    this.buttonText,
    this.isClaimable,
    this.backgroundColor,
    this.borderColor,
    this.iconBorderColor,
  }) {
    this.iconImages.value = iconImages ?? <Rx<String>>[];
    this.iconPositions.value = iconPositions ?? <Rx<Offset>>[];
    this.iconSizes.value = iconSizes ?? <Rx<Size>>[];
  }
}
