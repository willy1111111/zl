import '../../../../core/app_export.dart';
import '../models/vip_level_row_model.dart';
import '../models/vip_weekly_salary_details_model.dart';

class VipWeeklySalaryDetailsController extends GetxController {
  Rx<VipWeeklySalaryDetailsModel> vipWeeklySalaryDetailsModel =
      VipWeeklySalaryDetailsModel().obs;
  RxList<VipLevelRowModel> vipLevels = <VipLevelRowModel>[].obs;

  @override
  void onInit() {
    super.onInit();
    vipWeeklySalaryDetailsModel.value = VipWeeklySalaryDetailsModel();
    initializeVipLevels();
  }

  void initializeVipLevels() {
    vipLevels.value = [
      VipLevelRowModel(
        iconPath: ImageConstant.imgIconvip140x40.obs,
        levelText: 'Lv.0'.obs,
        bettingRequirement: '99.00'.obs,
        depositRequirement: '99.00'.obs,
        weeklySalary: '—'.obs,
      ),
      VipLevelRowModel(
        iconPath: ImageConstant.imgIconvip1.obs,
        levelText: 'Lv.1'.obs,
        bettingRequirement: '99.00'.obs,
        depositRequirement: '99.00'.obs,
        weeklySalary: '—'.obs,
      ),
      VipLevelRowModel(
        iconPath: ImageConstant.imgIconvip2.obs,
        levelText: 'Lv.2'.obs,
        bettingRequirement: '99.00'.obs,
        depositRequirement: '99.00'.obs,
        weeklySalary: '+৳69'.obs,
      ),
      VipLevelRowModel(
        iconPath: ImageConstant.imgIconvip3.obs,
        levelText: 'Lv.3'.obs,
        bettingRequirement: '99.00'.obs,
        depositRequirement: '99.00'.obs,
        weeklySalary: '+৳69'.obs,
      ),
      VipLevelRowModel(
        iconPath: ImageConstant.imgIconvip2.obs,
        levelText: 'Lv.4'.obs,
        bettingRequirement: '99.00'.obs,
        depositRequirement: '99.00'.obs,
        weeklySalary: '+৳69'.obs,
      ),
      VipLevelRowModel(
        iconPath: ImageConstant.imgIconvip5.obs,
        levelText: 'Lv.5'.obs,
        bettingRequirement: '99.00'.obs,
        depositRequirement: '99.00'.obs,
        weeklySalary: '+৳69'.obs,
      ),
      VipLevelRowModel(
        iconPath: ImageConstant.imgIconvip6.obs,
        levelText: 'Lv.6'.obs,
        bettingRequirement: '99.00'.obs,
        depositRequirement: '99.00'.obs,
        weeklySalary: '+৳69'.obs,
      ),
      VipLevelRowModel(
        iconPath: ImageConstant.imgIconvip7.obs,
        levelText: 'Lv.7'.obs,
        bettingRequirement: '99.00'.obs,
        depositRequirement: '99.00'.obs,
        weeklySalary: '+৳69'.obs,
      ),
      VipLevelRowModel(
        iconPath: ImageConstant.imgIconvip8.obs,
        levelText: 'Lv.8'.obs,
        bettingRequirement: '99.00'.obs,
        depositRequirement: '99.00'.obs,
        weeklySalary: '+৳69'.obs,
      ),
      VipLevelRowModel(
        iconPath: ImageConstant.imgIconvip9.obs,
        levelText: 'Lv.9'.obs,
        bettingRequirement: '99.00'.obs,
        depositRequirement: '99.00'.obs,
        weeklySalary: '+৳69'.obs,
      ),
    ];
  }

  @override
  void onClose() {
    super.onClose();
  }
}
