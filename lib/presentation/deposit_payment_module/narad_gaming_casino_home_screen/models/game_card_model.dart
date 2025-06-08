import 'package:get/get.dart';
import '../../../core/app_export.dart';

class GameCardModel {
  Rx<String>? gameImagePath;
  Rx<String>? overlayIconPath;
  Rx<String>? gameTitle;

  GameCardModel({
    this.gameImagePath,
    this.overlayIconPath,
    this.gameTitle,
  });
}
