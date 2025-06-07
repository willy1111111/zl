import '../../../../core/app_export.dart';
import '../models/vip_cashback_eligible_model.dart';
import '../models/vip_level_item_model.dart';

class VipCashbackEligibleController extends GetxController {
  Rx<VipCashbackEligibleModel> vipCashbackEligibleModel =
      VipCashbackEligibleModel().obs;

  RxList<VipLevelItemModel> vipLevels = <VipLevelItemModel>[].obs;

  @override
  void onInit() {
    super.onInit();
    vipCashbackEligibleModel.value = VipCashbackEligibleModel();
    _initializeVipLevels();
  }

  void _initializeVipLevels() {
    vipLevels.value = [
      VipLevelItemModel(
        level: 'Lv.1'.obs,
        iconPath: ImageConstant.imgIconvip1.obs,
        depositAmount: '800'.obs,
        betAmount: '1200'.obs,
        upgradeBonus: '500'.obs,
        weeklyCashback: '500'.obs,
      ),
      VipLevelItemModel(
        level: 'Lv.2'.obs,
        iconPath: ImageConstant.imgIconvip2.obs,
        depositAmount: '800'.obs,
        betAmount: '1200'.obs,
        upgradeBonus: '300'.obs,
        weeklyCashback: '300'.obs,
      ),
      VipLevelItemModel(
        level: 'Lv.3'.obs,
        iconPath: ImageConstant.imgIconvip3.obs,
        depositAmount: '800'.obs,
        betAmount: '1200'.obs,
        upgradeBonus: '500'.obs,
        weeklyCashback: '500'.obs,
      ),
      VipLevelItemModel(
        level: 'Lv.4'.obs,
        iconPath: ImageConstant.imgIconvip4.obs,
        depositAmount: '800'.obs,
        betAmount: '1200'.obs,
        upgradeBonus: '300'.obs,
        weeklyCashback: '300'.obs,
      ),
      VipLevelItemModel(
        level: 'Lv.5'.obs,
        iconPath: ImageConstant.imgIconvip5.obs,
        depositAmount: '800'.obs,
        betAmount: '1200'.obs,
        upgradeBonus: '300'.obs,
        weeklyCashback: '300'.obs,
      ),
      VipLevelItemModel(
        level: 'Lv.6'.obs,
        iconPath: ImageConstant.imgIconvip6.obs,
        depositAmount: '800'.obs,
        betAmount: '1200'.obs,
        upgradeBonus: '300'.obs,
        weeklyCashback: '300'.obs,
      ),
      VipLevelItemModel(
        level: 'Lv.7'.obs,
        iconPath: ImageConstant.imgIconvip7.obs,
        depositAmount: '800'.obs,
        betAmount: '1200'.obs,
        upgradeBonus: '300'.obs,
        weeklyCashback: '300'.obs,
      ),
      VipLevelItemModel(
        level: 'Lv.8'.obs,
        iconPath: ImageConstant.imgIconvip8.obs,
        depositAmount: '800'.obs,
        betAmount: '1200'.obs,
        upgradeBonus: '300'.obs,
        weeklyCashback: '300'.obs,
      ),
      VipLevelItemModel(
        level: 'Lv.9'.obs,
        iconPath: ImageConstant.imgIconvip9.obs,
        depositAmount: '800'.obs,
        betAmount: '1200'.obs,
        upgradeBonus: '300'.obs,
        weeklyCashback: '300'.obs,
      ),
      VipLevelItemModel(
        level: 'Lv.10'.obs,
        iconPath: ImageConstant.imgIconvip10.obs,
        depositAmount: '800'.obs,
        betAmount: '1200'.obs,
        upgradeBonus: '300'.obs,
        weeklyCashback: '300'.obs,
      ),
    ];
  }

  void onClaimButtonPressed() {
    Get.snackbar(
      'Claim',
      'Cashback claim initiated',
      backgroundColor: appTheme.colorFF4CAF,
      colorText: appTheme.whiteCustom,
    );
  }
}
