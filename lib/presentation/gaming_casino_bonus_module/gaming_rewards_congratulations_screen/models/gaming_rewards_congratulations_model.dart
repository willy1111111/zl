import '../../../core/app_export.dart';

class GamingRewardsCongratulationsModel {
  Rx<String> backgroundImage = ImageConstant.imgImage23.obs;
  Rx<String> celebrationImage = ImageConstant.imgGroup14240.obs;
  Rx<String> congratulationsBanner = ImageConstant.imgCongratulations.obs;

  GamingRewardsCongratulationsModel({
    String? backgroundImage,
    String? celebrationImage,
    String? congratulationsBanner,
  }) {
    this.backgroundImage.value =
        backgroundImage ?? 'assets/images/img_image_23.png';
    this.celebrationImage.value =
        celebrationImage ?? 'assets/images/img_group_14240.png';
    this.congratulationsBanner.value =
        congratulationsBanner ?? 'assets/images/img_congratulations.png';
  }
}
