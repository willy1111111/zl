import 'package:get/get.dart';
import '../models/teams_dashboard_model.dart';
import '../models/member_model.dart';
import 'package:flutter/material.dart';
import '../../../core/app_export.dart';

class TeamsDashboardController extends GetxController {
  Rx<TeamsDashboardModel> teamsDashboardModel = TeamsDashboardModel().obs;
  RxInt selectedIndex = 0.obs;
  RxList<MemberModel> membersList = <MemberModel>[].obs;

  @override
  void onInit() {
    super.onInit();
    teamsDashboardModel.value = TeamsDashboardModel();
    _initializeMembersList();
  }

  void _initializeMembersList() {
    membersList.value = [
      MemberModel(
        id: '898****333'.obs,
        isNew: true.obs,
        badges: [
          BadgeModel(text: 'Registers'.obs, color: Color(0xFFFF5070).obs),
          BadgeModel(text: 'Depositors'.obs, color: Color(0xFF0093FF).obs),
          BadgeModel(text: 'Qualified User'.obs, color: Color(0xFFFFC405).obs),
        ].obs,
        registrationDate: '2023-09-02 19:00:00'.obs,
        depositAmount: '3,049,909'.obs,
        validBet: '3,049,909'.obs,
        withdrawalAmount: '3,049,909'.obs,
        phoneVerification: 'Verified'.obs,
        isVerified: true.obs,
      ),
      MemberModel(
        id: '898****333'.obs,
        isNew: false.obs,
        badges: [
          BadgeModel(text: 'Registers'.obs, color: Color(0xFFFF5070).obs),
          BadgeModel(text: 'Depositors'.obs, color: Color(0xFF0093FF).obs),
        ].obs,
        registrationDate: '2023-09-02 19:00:00'.obs,
        depositAmount: '3,049,909'.obs,
        validBet: '0'.obs,
        withdrawalAmount: '0'.obs,
        phoneVerification: 'Ready'.obs,
        isVerified: false.obs,
      ),
      MemberModel(
        id: '898****333'.obs,
        isNew: false.obs,
        badges: [
          BadgeModel(text: 'Registers'.obs, color: Color(0xFFFF5070).obs),
        ].obs,
        registrationDate: '2023-09-02 19:00:00'.obs,
        depositAmount: '-'.obs,
        validBet: '0'.obs,
        withdrawalAmount: '0'.obs,
        phoneVerification: 'Ready'.obs,
        isVerified: false.obs,
      ),
    ];
  }

  void updateSelectedIndex(int index) {
    selectedIndex.value = index;
  }
}
