import '../../../core/app_export.dart';
import '../models/vip_monthly_salary_detail_model.dart';
import '../models/vip_requirement_item_model.dart';

class VipMonthlySalaryDetailController extends GetxController {
  Rx<VipMonthlySalaryDetailModel> vipMonthlySalaryDetailModel =
      VipMonthlySalaryDetailModel().obs;
  RxList<VipRequirementItemModel> vipRequirements =
      <VipRequirementItemModel>[].obs;
  RxString? countdownTime = '2 days 23：59：59'.obs;

  @override
  void onInit() {
    super.onInit();
    vipMonthlySalaryDetailModel.value = VipMonthlySalaryDetailModel();
    initializeVipRequirements();
  }

  void initializeVipRequirements() {
    vipRequirements.value = [
      VipRequirementItemModel(
        vipLevel: 'Lv.1'.obs,
        vipIcon: ImageConstant.imgIconvip13.obs,
        depositAmount: '800'.obs,
        betAmount: '1200'.obs,
        upgradeBonus: '500'.obs,
        weeklyCashback: '500'.obs,
      ),
      VipRequirementItemModel(
        vipLevel: 'Lv.2'.obs,
        vipIcon: ImageConstant.imgIconvip140x40.obs,
        depositAmount: '800'.obs,
        betAmount: '1200'.obs,
        upgradeBonus: '300'.obs,
        weeklyCashback: '300'.obs,
      ),
      VipRequirementItemModel(
        vipLevel: 'Lv.3'.obs,
        vipIcon: ImageConstant.imgIconvip14.obs,
        depositAmount: '800'.obs,
        betAmount: '1200'.obs,
        upgradeBonus: '500'.obs,
        weeklyCashback: '500'.obs,
      ),
      VipRequirementItemModel(
        vipLevel: 'Lv.4'.obs,
        vipIcon: ImageConstant.imgIconvip4.obs,
        depositAmount: '800'.obs,
        betAmount: '1200'.obs,
        upgradeBonus: '300'.obs,
        weeklyCashback: '300'.obs,
      ),
      VipRequirementItemModel(
        vipLevel: 'Lv.5'.obs,
        vipIcon: ImageConstant.imgIconvip16.obs,
        depositAmount: '800'.obs,
        betAmount: '1200'.obs,
        upgradeBonus: '300'.obs,
        weeklyCashback: '300'.obs,
      ),
      VipRequirementItemModel(
        vipLevel: 'Lv.6'.obs,
        vipIcon: ImageConstant.imgIconvip11.obs,
        depositAmount: '800'.obs,
        betAmount: '1200'.obs,
        upgradeBonus: '300'.obs,
        weeklyCashback: '300'.obs,
      ),
      VipRequirementItemModel(
        vipLevel: 'Lv.7'.obs,
        vipIcon: ImageConstant.imgIconvip15.obs,
        depositAmount: '800'.obs,
        betAmount: '1200'.obs,
        upgradeBonus: '300'.obs,
        weeklyCashback: '300'.obs,
      ),
      VipRequirementItemModel(
        vipLevel: 'Lv.8'.obs,
        vipIcon: ImageConstant.imgIconvip12.obs,
        depositAmount: '800'.obs,
        betAmount: '1200'.obs,
        upgradeBonus: '300'.obs,
        weeklyCashback: '300'.obs,
      ),
      VipRequirementItemModel(
        vipLevel: 'Lv.9'.obs,
        vipIcon: ImageConstant.imgIconvip17.obs,
        depositAmount: '800'.obs,
        betAmount: '1200'.obs,
        upgradeBonus: '300'.obs,
        weeklyCashback: '300'.obs,
      ),
      VipRequirementItemModel(
        vipLevel: 'Lv.10'.obs,
        vipIcon: ImageConstant.imgIconvip10.obs,
        depositAmount: '800'.obs,
        betAmount: '1200'.obs,
        upgradeBonus: '300'.obs,
        weeklyCashback: '300'.obs,
      ),
    ];
  }

  void onUpgradeBonusTap() {
    Get.toNamed(AppRoutes.vipUpgradeBonusScreen);
  }

  void onWeeklySalaryTap() {
    Get.toNamed(AppRoutes.vipWeeklySalaryScreen);
  }

  void onMonthlySalaryTap() {
    Get.toNamed(AppRoutes.vipMonthlySalaryScreen);
  }

  void onReceiveAwardTap() {
    // Handle receive award logic
    Get.snackbar(
      'Award Received',
      'Monthly salary award has been claimed successfully',
      backgroundColor: appTheme.colorFF76CD,
      colorText: appTheme.whiteCustom,
    );
  }

  void onBirthdayBonusTap() {
    // Handle birthday bonus navigation
  }

  @override
  void onClose() {
    super.onClose();
  }
}
