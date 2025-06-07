import 'package:get/get.dart';
import '../../../../../core/app_export.dart';

/// This class is used in the [CasinoGameDetailModalScreen] screen with GetX.

class CasinoGameDetailModalModel {
  Rx<String>? gameImage;
  Rx<String>? gameTitle;
  Rx<String>? category;
  Rx<String>? favoriteIcon;
  Rx<bool>? isFavorite;

  CasinoGameDetailModalModel({
    this.gameImage,
    this.gameTitle,
    this.category,
    this.favoriteIcon,
    this.isFavorite,
  }) {
    gameImage = gameImage ?? 'assets/images/img_baccarat_2.png'.obs;
    gameTitle = gameTitle ?? 'Game Names Can Be In Two Rows'.obs;
    category = category ?? 'SLOTS'.obs;
    favoriteIcon =
        favoriteIcon ?? 'assets/images/img_vector_amber_a400.svg'.obs;
    isFavorite = isFavorite ?? false.obs;
  }
}
