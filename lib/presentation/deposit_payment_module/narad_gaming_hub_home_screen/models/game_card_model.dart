import 'package:get/get.dart';
import '../../../core/app_export.dart';

/// This class is used in the [custom_game_card] component with GetX.
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
