import '../../../../../core/app_export.dart';
import '../models/vip_table_row_model.dart';
import '../models/vip_weekly_salary_model.dart';

class VipWeeklySalaryController extends GetxController {
  Rx<VipWeeklySalaryModel> vipWeeklySalaryModel = VipWeeklySalaryModel().obs;
  RxBool showSuccessDialog = false.obs;
  RxList<VipTableRowModel> tableRows = <VipTableRowModel>[].obs;

  @override
  void onInit() {
    super.onInit();
    vipWeeklySalaryModel.value = VipWeeklySalaryModel();
    _initializeTableData();
    _showSuccessDialogTemporarily();
  }

  void _initializeTableData() {
    tableRows.value = [
      VipTableRowModel(
        rowTitle: 'Deposit amount'.obs,
        values: ['500'.obs, '800'.obs, '1000'.obs, '1200'.obs, '200'.obs],
        isHighlighted: false.obs,
      ),
      VipTableRowModel(
        rowTitle: 'Bet amount'.obs,
        values: ['300'.obs, '800'.obs, '1000'.obs, '1200'.obs, '200'.obs],
        isHighlighted: false.obs,
      ),
      VipTableRowModel(
        rowTitle: 'Upgrade bonus'.obs,
        values: ['500'.obs, '800'.obs, '1000'.obs, '1200'.obs, '200'.obs],
        isHighlighted: false.obs,
      ),
      VipTableRowModel(
        rowTitle: 'weekly salary'.obs,
        values: ['300'.obs, '800'.obs, '1000'.obs, '1200'.obs, '200'.obs],
        isHighlighted: true.obs,
      ),
      VipTableRowModel(
        rowTitle: 'monthly salary'.obs,
        values: ['300'.obs, '800'.obs, '1000'.obs, '1200'.obs, '200'.obs],
        isHighlighted: false.obs,
      ),
      VipTableRowModel(
        rowTitle: 'Birthday bonus'.obs,
        values: ['300'.obs, '800'.obs, '1000'.obs, '1200'.obs, '200'.obs],
        isHighlighted: false.obs,
      ),
    ];
  }

  void _showSuccessDialogTemporarily() {
    showSuccessDialog.value = true;
    Future.delayed(Duration(seconds: 3), () {
      showSuccessDialog.value = false;
    });
  }

  void onUpgradeBonusCardTap() {
    Get.toNamed(AppRoutes.vipUpgradeBonusScreen);
  }

  void onWeeklySalaryCardTap() {
    Get.toNamed(AppRoutes.vipWeeklySalaryDetailScreen);
  }

  void onMonthlySalaryCardTap() {
    Get.toNamed(AppRoutes.vipMonthlySalaryScreen);
  }

  void onBirthdayBonusCardTap() {
    Get.toNamed(AppRoutes.vipRewardsBenefitsScreen);
  }

  @override
  void onClose() {
    super.onClose();
  }
}
