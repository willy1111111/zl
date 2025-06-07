import 'package:get/get.dart';
import '../models/registration_bonus_model.dart';
import '../models/bonus_data_model.dart';
import '../../../../../core/app_export.dart';

class RegistrationBonusController extends GetxController {
  Rx<RegistrationBonusModel> registrationBonusModel =
      RegistrationBonusModel().obs;
  RxString selectedDateRange = '08-21 - 08-27'.obs;
  RxString totalRegistrationBonus = '₱ 333,333.00'.obs;
  RxString totalUsersText = 'total users:10'.obs;
  RxList<BonusDataModel> bonusDataList = <BonusDataModel>[].obs;

  @override
  void onInit() {
    super.onInit();
    registrationBonusModel.value = RegistrationBonusModel();
    loadBonusData();
  }

  void loadBonusData() {
    bonusDataList.value = [
      BonusDataModel(
        date: '2023-09-09 19:00'.obs,
        team: '898****33'.obs,
        bonus: '+₱ 9.80'.obs,
        isEvenRow: false.obs,
      ),
      BonusDataModel(
        date: '2023-09-09 19:00'.obs,
        team: '898****33'.obs,
        bonus: '+₱ 9.80'.obs,
        isEvenRow: true.obs,
      ),
      BonusDataModel(
        date: '2023-09-09 19:00'.obs,
        team: '898****33'.obs,
        bonus: '+₱ 9.80'.obs,
        isEvenRow: false.obs,
      ),
      BonusDataModel(
        date: '2023-09-09 19:00'.obs,
        team: '898****33'.obs,
        bonus: '+₱ 9.80'.obs,
        isEvenRow: true.obs,
      ),
    ];
  }

  void onTabChanged(int index) {
    // Handle tab navigation based on index
    switch (index) {
      case 0:
        // Navigate to invite
        break;
      case 1:
        // Navigate to achievement
        break;
      case 2:
        // Navigate to teams
        break;
      case 3:
        // Navigate to incomes
        break;
      case 4:
        // Current bonus tab - already selected
        break;
      case 5:
        // Navigate to FAQ
        break;
    }
  }

  void onRegistrationBonusDropdownTap() {
    // Handle registration bonus dropdown selection
    Get.snackbar(
      'Dropdown',
      'Registration Bonus dropdown tapped',
      snackPosition: SnackPosition.BOTTOM,
    );
  }

  void onDatePickerTap() {
    // Handle date picker selection
    Get.snackbar(
      'Date Picker',
      'Date range picker tapped',
      snackPosition: SnackPosition.BOTTOM,
    );
  }

  void onInviteButtonTap() {
    // Handle invite button action
    Get.snackbar(
      'Invite',
      'Invite button tapped',
      snackPosition: SnackPosition.BOTTOM,
    );
  }

  @override
  void onClose() {
    super.onClose();
  }
}
