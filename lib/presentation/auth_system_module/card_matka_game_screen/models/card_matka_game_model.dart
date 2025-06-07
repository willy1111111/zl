import '../../../../core/app_export.dart';

/// This class is used in the [CardMatkaGameScreen] screen with GetX.
class CardMatkaGameModel {
  // Observable variables for reactive state management
  Rx<String> gameLogoPath = ImageConstant.imgCardmatkalandingen1165x375.obs;
  Rx<String> depositIconPath = ImageConstant.imgVectorWhiteA70011x16.obs;
  Rx<String> fullScreenIconPath = ImageConstant.imgStrokeBlueGray400.obs;
  Rx<String> returnIconPath = ImageConstant.imgStroke.obs;
  Rx<bool> isFullScreen = false.obs;
  Rx<bool> isLoading = false.obs;

  // Simple constructor with no parameters
  CardMatkaGameModel();
}
