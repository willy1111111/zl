import 'package:get/get.dart';

import 'package:flutter/material.dart';
import '../../../core/app_export.dart';

/// This class is used in the [TicketRecordsScreen] screen with GetX.

class TicketRecordModel {
  Rx<String>? id;
  Rx<String>? title;
  Rx<String>? bonus;
  Rx<String>? time;
  Rx<String>? iconPath;
  Rx<String>? backgroundImagePath;
  Rx<String>? rightImagePath;
  Rx<Color>? iconBackgroundColor;
  Rx<Color>? iconShadowColor;
  Rx<Color>? bonusTextColor;
  Rx<double>? iconWidth;
  Rx<double>? iconHeight;

  TicketRecordModel({
    this.id,
    this.title,
    this.bonus,
    this.time,
    this.iconPath,
    this.backgroundImagePath,
    this.rightImagePath,
    this.iconBackgroundColor,
    this.iconShadowColor,
    this.bonusTextColor,
    this.iconWidth,
    this.iconHeight,
  });
}
