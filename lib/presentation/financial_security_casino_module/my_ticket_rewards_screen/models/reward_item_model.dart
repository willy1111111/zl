import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../core/app_export.dart';

class RewardItemModel {
  Rx<String>? id;
  Rx<String>? title;
  Rx<String>? date;
  Rx<String>? rewardType;
  Rx<String>? rewardDescription;
  Rx<Color>? highlightColor;
  Rx<String>? iconPath;
  Rx<Color>? backgroundColor;
  Rx<String>? backgroundImagePath;
  Rx<String>? overlayImagePath;
  Rx<String>? decorationImagePath;
  Rx<String>? rightSectionImagePath;
  Rx<String>? dueDate;
  Rx<String>? timeRemaining;
  Rx<bool>? isExpired;
  Rx<bool>? isClaimable;

  RewardItemModel({
    this.id,
    this.title,
    this.date,
    this.rewardType,
    this.rewardDescription,
    this.highlightColor,
    this.iconPath,
    this.backgroundColor,
    this.backgroundImagePath,
    this.overlayImagePath,
    this.decorationImagePath,
    this.rightSectionImagePath,
    this.dueDate,
    this.timeRemaining,
    this.isExpired,
    this.isClaimable,
  });
}
