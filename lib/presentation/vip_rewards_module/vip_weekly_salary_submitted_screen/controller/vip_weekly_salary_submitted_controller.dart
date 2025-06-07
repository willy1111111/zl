import '../../../../core/app_export.dart';
import '../models/vip_requirement_item_model.dart';
import '../models/vip_weekly_salary_submitted_model.dart';

class VipWeeklySalarySubmittedController extends GetxController {
  Rx<VipWeeklySalarySubmittedModel> vipWeeklySalarySubmittedModel =
      VipWeeklySalarySubmittedModel().obs;
  RxBool isModalVisible = true.obs;
  RxList<VipRequirementItemModel> vipRequirements =
      <VipRequirementItemModel>[].obs;

  @override
  void onInit() {
    super.onInit();
    vipWeeklySalarySubmittedModel.value = VipWeeklySalarySubmittedModel();
    _initializeVipRequirements();
  }

  void _initializeVipRequirements() {
    vipRequirements.value = [
      VipRequirementItemModel(
        level: 'Lv.1'.obs,
        iconPath: ImageConstant.img684411655.obs,
        depositAmount: '500'.obs,
        betAmount: '300'.obs,
        upgradeBonus: '500'.obs,
        weeklySalary: '300'.obs,
        monthlySalary: '300'.obs,
        isWeeklySalaryHighlighted: true.obs,
      ),
      VipRequirementItemModel(
        level: 'Lv.2'.obs,
        iconPath: ImageConstant.img684411655.obs,
        depositAmount: '800'.obs,
        betAmount: '800'.obs,
        upgradeBonus: '800'.obs,
        weeklySalary: '800'.obs,
        monthlySalary: '800'.obs,
        isWeeklySalaryHighlighted: true.obs,
      ),
      VipRequirementItemModel(
        level: 'Lv.3'.obs,
        iconPath: ImageConstant.img684411655.obs,
        depositAmount: '1000'.obs,
        betAmount: '1000'.obs,
        upgradeBonus: '1000'.obs,
        weeklySalary: '1000'.obs,
        monthlySalary: '1000'.obs,
        isWeeklySalaryHighlighted: true.obs,
      ),
      VipRequirementItemModel(
        level: 'Lv.4'.obs,
        iconPath: ImageConstant.img684411655.obs,
        depositAmount: '1200'.obs,
        betAmount: '1200'.obs,
        upgradeBonus: '1200'.obs,
        weeklySalary: '1200'.obs,
        monthlySalary: '1200'.obs,
        isWeeklySalaryHighlighted: true.obs,
      ),
      VipRequirementItemModel(
        level: 'Lv.'.obs,
        iconPath: ImageConstant.img684411655.obs,
        depositAmount: '200'.obs,
        betAmount: '200'.obs,
        upgradeBonus: '200'.obs,
        weeklySalary: '200'.obs,
        monthlySalary: '200'.obs,
        isWeeklySalaryHighlighted: true.obs,
      ),
    ];
  }

  void handleNotificationTap() {
    // Handle notification tap
  }

  void handleUpgradeBonusTap() {
    // Handle upgrade bonus card tap
  }

  void handleWeeklySalaryTap() {
    // Handle weekly salary card tap
  }

  void handleMonthlySalaryTap() {
    // Handle monthly salary card tap
  }

  void handleBirthdayBonusTap() {
    // Handle birthday bonus card tap
  }

  void handlePreviousPage() {
    // Handle previous page navigation
  }

  void handleNextPage() {
    // Handle next page navigation
  }

  void closeModal() {
    isModalVisible.value = false;
  }

  @override
  void onClose() {
    super.onClose();
  }
}
