import 'package:get/get.dart';
import '../../../../core/app_export.dart';

class GameRebateModel {
  Rx<String>? gameName;
  Rx<String>? iconPath;
  Rx<double>? iconHeight;
  Rx<double>? iconWidth;

  GameRebateModel({
    this.gameName,
    this.iconPath,
    this.iconHeight,
    this.iconWidth,
  });
}
