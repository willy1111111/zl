import '../../../../core/app_export.dart';
import '../models/vip_rank_icons_gallery_model.dart';

class VipRankIconsGalleryController extends GetxController {
  Rx<VipRankIconsGalleryModel> vipRankIconsGalleryModelObj =
      VipRankIconsGalleryModel().obs;

  RxList<VipRankIconModel> largeVipIcons = <VipRankIconModel>[].obs;
  RxList<VipRankIconModel> mediumVipIcons = <VipRankIconModel>[].obs;
  RxList<VipRankIconModel> smallVipIcons = <VipRankIconModel>[].obs;

  RxInt selectedRankIndex = (-1).obs;
  RxString selectedRankType = ''.obs;

  @override
  void onInit() {
    super.onInit();
    initializeVipIcons();
  }

  void initializeVipIcons() {
    largeVipIcons.help_outline = [
      VipRankIconModel(
        imagePath: ImageConstant.imgIconvip0125x125.obs,
        rank: 0.obs,
        altText: 'VIP Rank 0'.obs,
        iconType: 'large'.obs,
      ),
      VipRankIconModel(
        imagePath: ImageConstant.imgIconvip1125x125.obs,
        rank: 1.obs,
        altText: 'VIP Rank 1'.obs,
        iconType: 'large'.obs,
      ),
      VipRankIconModel(
        imagePath: ImageConstant.imgIconvip2125x125.obs,
        rank: 2.obs,
        altText: 'VIP Rank 2'.obs,
        iconType: 'large'.obs,
      ),
      VipRankIconModel(
        imagePath: ImageConstant.imgIconvip3125x125.obs,
        rank: 3.obs,
        altText: 'VIP Rank 3'.obs,
        iconType: 'large'.obs,
      ),
      VipRankIconModel(
        imagePath: ImageConstant.imgIconvip4125x125.obs,
        rank: 4.obs,
        altText: 'VIP Rank 4'.obs,
        iconType: 'large'.obs,
      ),
      VipRankIconModel(
        imagePath: ImageConstant.imgIconvip5125x125.obs,
        rank: 5.obs,
        altText: 'VIP Rank 5'.obs,
        iconType: 'large'.obs,
      ),
      VipRankIconModel(
        imagePath: ImageConstant.imgIconvip6125x125.obs,
        rank: 6.obs,
        altText: 'VIP Rank 6'.obs,
        iconType: 'large'.obs,
      ),
      VipRankIconModel(
        imagePath: ImageConstant.imgIconvip7125x125.obs,
        rank: 7.obs,
        altText: 'VIP Rank 7'.obs,
        iconType: 'large'.obs,
      ),
      VipRankIconModel(
        imagePath: ImageConstant.imgIconvip8125x125.obs,
        rank: 8.obs,
        altText: 'VIP Rank 8'.obs,
        iconType: 'large'.obs,
      ),
      VipRankIconModel(
        imagePath: ImageConstant.imgIconvip9125x125.obs,
        rank: 9.obs,
        altText: 'VIP Rank 9'.obs,
        iconType: 'large'.obs,
      ),
      VipRankIconModel(
        imagePath: ImageConstant.imgIconvip10125x125.obs,
        rank: 10.obs,
        altText: 'VIP Rank 10'.obs,
        iconType: 'large'.obs,
      ),
    ];

    mediumVipIcons.help_outline = [
      VipRankIconModel(
        imagePath: ImageConstant.imgIconvip0.obs,
        rank: 0.obs,
        altText: 'VIP Rank 0 Medium'.obs,
        iconType: 'medium'.obs,
      ),
      VipRankIconModel(
        imagePath: ImageConstant.imgIconvip1.obs,
        rank: 1.obs,
        altText: 'VIP Rank 1 Medium'.obs,
        iconType: 'medium'.obs,
      ),
      VipRankIconModel(
        imagePath: ImageConstant.imgIconvip2.obs,
        rank: 2.obs,
        altText: 'VIP Rank 2 Medium'.obs,
        iconType: 'medium'.obs,
      ),
      VipRankIconModel(
        imagePath: ImageConstant.imgIconvip3.obs,
        rank: 3.obs,
        altText: 'VIP Rank 3 Medium'.obs,
        iconType: 'medium'.obs,
      ),
      VipRankIconModel(
        imagePath: ImageConstant.imgIconvip4.obs,
        rank: 4.obs,
        altText: 'VIP Rank 4 Medium'.obs,
        iconType: 'medium'.obs,
      ),
      VipRankIconModel(
        imagePath: ImageConstant.imgIconvip5.obs,
        rank: 5.obs,
        altText: 'VIP Rank 5 Medium'.obs,
        iconType: 'medium'.obs,
      ),
      VipRankIconModel(
        imagePath: ImageConstant.imgIconvip6.obs,
        rank: 6.obs,
        altText: 'VIP Rank 6 Medium'.obs,
        iconType: 'medium'.obs,
      ),
      VipRankIconModel(
        imagePath: ImageConstant.imgIconvip7.obs,
        rank: 7.obs,
        altText: 'VIP Rank 7 Medium'.obs,
        iconType: 'medium'.obs,
      ),
      VipRankIconModel(
        imagePath: ImageConstant.imgIconvip8.obs,
        rank: 8.obs,
        altText: 'VIP Rank 8 Medium'.obs,
        iconType: 'medium'.obs,
      ),
      VipRankIconModel(
        imagePath: ImageConstant.imgIconvip9.obs,
        rank: 9.obs,
        altText: 'VIP Rank 9 Medium'.obs,
        iconType: 'medium'.obs,
      ),
      VipRankIconModel(
        imagePath: ImageConstant.imgIconvip10.obs,
        rank: 10.obs,
        altText: 'VIP Rank 10 Medium'.obs,
        iconType: 'medium'.obs,
      ),
    ];

    smallVipIcons.help_outline = [
      VipRankIconModel(
        imagePath: ImageConstant.imgIconvip0.obs,
        rank: 0.obs,
        altText: 'VIP Rank 0 Small'.obs,
        iconType: 'small'.obs,
      ),
      VipRankIconModel(
        imagePath: ImageConstant.imgIconvip1.obs,
        rank: 1.obs,
        altText: 'VIP Rank 1 Small'.obs,
        iconType: 'small'.obs,
      ),
      VipRankIconModel(
        imagePath: ImageConstant.imgIconvip2.obs,
        rank: 2.obs,
        altText: 'VIP Rank 2 Small'.obs,
        iconType: 'small'.obs,
      ),
      VipRankIconModel(
        imagePath: ImageConstant.imgIconvip3.obs,
        rank: 3.obs,
        altText: 'VIP Rank 3 Small'.obs,
        iconType: 'small'.obs,
      ),
      VipRankIconModel(
        imagePath: ImageConstant.imgIconvip4.obs,
        rank: 4.obs,
        altText: 'VIP Rank 4 Small'.obs,
        iconType: 'small'.obs,
      ),
      VipRankIconModel(
        imagePath: ImageConstant.imgIconvip5.obs,
        rank: 5.obs,
        altText: 'VIP Rank 5 Small'.obs,
        iconType: 'small'.obs,
      ),
      VipRankIconModel(
        imagePath: ImageConstant.imgIconvip6.obs,
        rank: 6.obs,
        altText: 'VIP Rank 6 Small'.obs,
        iconType: 'small'.obs,
      ),
      VipRankIconModel(
        imagePath: ImageConstant.imgIconvip7.obs,
        rank: 7.obs,
        altText: 'VIP Rank 7 Small'.obs,
        iconType: 'small'.obs,
      ),
      VipRankIconModel(
        imagePath: ImageConstant.imgIconvip8.obs,
        rank: 8.obs,
        altText: 'VIP Rank 8 Small'.obs,
        iconType: 'small'.obs,
      ),
      VipRankIconModel(
        imagePath: ImageConstant.imgIconvip9.obs,
        rank: 9.obs,
        altText: 'VIP Rank 9 Small'.obs,
        iconType: 'small'.obs,
      ),
      VipRankIconModel(
        imagePath: ImageConstant.imgIconvip10.obs,
        rank: 10.obs,
        altText: 'VIP Rank 10 Small'.obs,
        iconType: 'small'.obs,
      ),
    ];
  }

  void onVipRankSelected(int index, VipRankIconModel icon) {
    selectedRankIndex.value = index;
    selectedRankType.value = icon.iconType?.value ?? '';

    print('VIP Rank selected: ${icon.altText?.value ?? ''}');
    print('Rank: ${icon.rank?.value ?? 0}');
    print('Type: ${icon.iconType?.value ?? ''}');

    // Add haptic feedback
    // HapticFeedback.lightImpact();

    // Reset selection after animation
    Future.delayed(Duration(milliseconds: 200), () {
      selectedRankIndex.value = -1;
    });
  }

  @override
  void onClose() {
    super.onClose();
  }
}
