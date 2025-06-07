import '../../../../core/app_export.dart';
import '../models/vip_level_item_model.dart';
import '../models/vip_monthly_salary_details_model.dart';

class VipMonthlySalaryDetailsController extends GetxController {
  Rx<VipMonthlySalaryDetailsModel> vipMonthlySalaryDetailsModelObj =
      VipMonthlySalaryDetailsModel().obs;

  RxList<VipLevelItemModel> vipLevels = <VipLevelItemModel>[].obs;

  @override
  void onInit() {
    super.onInit();
    _initializeVipLevels();
  }

  void _initializeVipLevels() {
    vipLevels.value = [
      VipLevelItemModel(
        iconPath: ImageConstant.imgIconvip140x40.obs,
        levelText: 'Lv.0'.obs,
        monthlyBetting: '99.00'.obs,
        monthlyDeposit: '99.00'.obs,
        monthlySalary: '—'.obs,
      ),
      VipLevelItemModel(
        iconPath: ImageConstant.imgIconvip1.obs,
        levelText: 'Lv.1'.obs,
        monthlyBetting: '99.00'.obs,
        monthlyDeposit: '99.00'.obs,
        monthlySalary: '—'.obs,
      ),
      VipLevelItemModel(
        iconPath: ImageConstant.imgIconvip2.obs,
        levelText: 'Lv.2'.obs,
        monthlyBetting: '99.00'.obs,
        monthlyDeposit: '99.00'.obs,
        monthlySalary: '+৳69'.obs,
      ),
      VipLevelItemModel(
        iconPath: ImageConstant.imgIconvip3.obs,
        levelText: 'Lv.3'.obs,
        monthlyBetting: '99.00'.obs,
        monthlyDeposit: '99.00'.obs,
        monthlySalary: '+৳69'.obs,
      ),
      VipLevelItemModel(
        iconPath: ImageConstant.imgIconvip2.obs,
        levelText: 'Lv.4'.obs,
        monthlyBetting: '99.00'.obs,
        monthlyDeposit: '99.00'.obs,
        monthlySalary: '+৳69'.obs,
      ),
      VipLevelItemModel(
        iconPath: ImageConstant.imgIconvip5.obs,
        levelText: 'Lv.5'.obs,
        monthlyBetting: '99.00'.obs,
        monthlyDeposit: '99.00'.obs,
        monthlySalary: '+৳69'.obs,
      ),
      VipLevelItemModel(
        iconPath: ImageConstant.imgIconvip6.obs,
        levelText: 'Lv.6'.obs,
        monthlyBetting: '99.00'.obs,
        monthlyDeposit: '99.00'.obs,
        monthlySalary: '+৳69'.obs,
      ),
      VipLevelItemModel(
        iconPath: ImageConstant.imgIconvip7.obs,
        levelText: 'Lv.7'.obs,
        monthlyBetting: '99.00'.obs,
        monthlyDeposit: '99.00'.obs,
        monthlySalary: '+৳69'.obs,
      ),
      VipLevelItemModel(
        iconPath: ImageConstant.imgIconvip8.obs,
        levelText: 'Lv.8'.obs,
        monthlyBetting: '99.00'.obs,
        monthlyDeposit: '99.00'.obs,
        monthlySalary: '+৳69'.obs,
      ),
      VipLevelItemModel(
        iconPath: ImageConstant.imgIconvip9.obs,
        levelText: 'Lv.9'.obs,
        monthlyBetting: '99.00'.obs,
        monthlyDeposit: '99.00'.obs,
        monthlySalary: '+৳69'.obs,
      ),
    ];
  }
}
