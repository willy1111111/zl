import '../../../core/app_export.dart';
import '../models/vip_level_item_model.dart';
import '../models/vip_monthly_salary_model.dart';

class VipMonthlySalaryController extends GetxController {
  Rx<VipMonthlySalaryModel> vipMonthlySalaryModel = VipMonthlySalaryModel().obs;
  RxList<VipLevelItemModel> vipLevels = <VipLevelItemModel>[].obs;

  @override
  void onInit() {
    super.onInit();
    vipMonthlySalaryModel.value = VipMonthlySalaryModel();
    _initializeVipLevels();
  }

  void _initializeVipLevels() {
    vipLevels.value = [
      VipLevelItemModel(
        level: 'Lv.0'.obs,
        iconPath: ImageConstant.imgIconvip1.obs,
        bettingRequirement: '99.00'.obs,
        depositRequirement: '99.00'.obs,
        monthlySalary: '—'.obs,
        isRewardEligible: false.obs,
      ),
      VipLevelItemModel(
        level: 'Lv.1'.obs,
        iconPath: ImageConstant.imgIconvip13.obs,
        bettingRequirement: '99.00'.obs,
        depositRequirement: '99.00'.obs,
        monthlySalary: '—'.obs,
        isRewardEligible: false.obs,
      ),
      VipLevelItemModel(
        level: 'Lv.2'.obs,
        iconPath: ImageConstant.imgIconvip140x40.obs,
        bettingRequirement: '99.00'.obs,
        depositRequirement: '99.00'.obs,
        monthlySalary: '+৳69'.obs,
        isRewardEligible: true.obs,
      ),
      VipLevelItemModel(
        level: 'Lv.3'.obs,
        iconPath: ImageConstant.imgIconvip14.obs,
        bettingRequirement: '99.00'.obs,
        depositRequirement: '99.00'.obs,
        monthlySalary: '+৳69'.obs,
        isRewardEligible: true.obs,
      ),
      VipLevelItemModel(
        level: 'Lv.4'.obs,
        iconPath: ImageConstant.imgIconvip140x40.obs,
        bettingRequirement: '99.00'.obs,
        depositRequirement: '99.00'.obs,
        monthlySalary: '+৳69'.obs,
        isRewardEligible: true.obs,
      ),
      VipLevelItemModel(
        level: 'Lv.5'.obs,
        iconPath: ImageConstant.imgIconvip16.obs,
        bettingRequirement: '99.00'.obs,
        depositRequirement: '99.00'.obs,
        monthlySalary: '+৳69'.obs,
        isRewardEligible: true.obs,
      ),
      VipLevelItemModel(
        level: 'Lv.6'.obs,
        iconPath: ImageConstant.imgIconvip11.obs,
        bettingRequirement: '99.00'.obs,
        depositRequirement: '99.00'.obs,
        monthlySalary: '+৳69'.obs,
        isRewardEligible: true.obs,
      ),
      VipLevelItemModel(
        level: 'Lv.7'.obs,
        iconPath: ImageConstant.imgIconvip15.obs,
        bettingRequirement: '99.00'.obs,
        depositRequirement: '99.00'.obs,
        monthlySalary: '+৳69'.obs,
        isRewardEligible: true.obs,
      ),
      VipLevelItemModel(
        level: 'Lv.8'.obs,
        iconPath: ImageConstant.imgIconvip12.obs,
        bettingRequirement: '99.00'.obs,
        depositRequirement: '99.00'.obs,
        monthlySalary: '+৳69'.obs,
        isRewardEligible: true.obs,
      ),
      VipLevelItemModel(
        level: 'Lv.9'.obs,
        iconPath: ImageConstant.imgIconvip17.obs,
        bettingRequirement: '99.00'.obs,
        depositRequirement: '99.00'.obs,
        monthlySalary: '+৳69'.obs,
        isRewardEligible: true.obs,
      ),
    ];
  }
}
