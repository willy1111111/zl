import 'package:flutter/material.dart';
import '../models/agent_invite_dashboard_model.dart';
import '../models/benefit_item_model.dart';
import '../models/bonus_card_model.dart';
import '../../../../core/app_export.dart';

class AgentInviteDashboardController extends GetxController {
  Rx<AgentInviteDashboardModel> agentInviteDashboardModel =
      AgentInviteDashboardModel().obs;
  RxList<BenefitItemModel> benefitItems = <BenefitItemModel>[].obs;
  RxList<BonusCardModel> bonusCards = <BonusCardModel>[].obs;
  RxBool isModalVisible = false.obs;

  @override
  void onInit() {
    super.onInit();
    initializeBenefitItems();
    initializeBonusCards();
  }

  void initializeBenefitItems() {
    benefitItems.value = [
      BenefitItemModel(
        mainIcon: ImageConstant.imgTdr23.obs,
        overlayIcon: ImageConstant.imgImage1100.obs,
        badgeIcon: ImageConstant.imgImage1104.obs,
        title: 'Bet Rebate up to '.obs,
        value: '0.8%'.obs,
      ),
      BenefitItemModel(
        mainIcon: ImageConstant.imgGroup2131329972.obs,
        title: 'Rebate '.obs,
        value: '1.3%'.obs,
      ),
      BenefitItemModel(
        mainIcon: ImageConstant.imgTdr23.obs,
        overlayIcon: ImageConstant.imgImage1109.obs,
        title: 'Qualified Bonus '.obs,
        value: '₱88'.obs,
      ),
    ];
  }

  void initializeBonusCards() {
    bonusCards.value = [
      BonusCardModel(
        title: 'Registration Bonus'.obs,
        amount: '₱ 9,000,000.00'.obs,
        iconPath: ImageConstant.imgJb47x49.obs,
        gradientIndex: 3.obs,
      ),
      BonusCardModel(
        title: 'Deposit Bonus'.obs,
        amount: '₱ 1,000,000.00'.obs,
        iconPath: ImageConstant.imgJb47x49.obs,
        gradientIndex: 4.obs,
      ),
      BonusCardModel(
        title: 'Qualified Bonus'.obs,
        amount: '₱ 90,000,000.00'.obs,
        iconPath: ImageConstant.imgJb47x49.obs,
        gradientIndex: 7.obs,
      ),
      BonusCardModel(
        title: 'Achievement Bonus'.obs,
        amount: '₱ 90,000,000.00'.obs,
        iconPath: ImageConstant.imgJb47x49.obs,
        gradientIndex: 3.obs,
      ),
      BonusCardModel(
        title: 'Deposit Rebate Bonus'.obs,
        amount: '₱ 100,000.00'.obs,
        iconPath: ImageConstant.imgJb47x49.obs,
        gradientIndex: 5.obs,
      ),
      BonusCardModel(
        title: 'BettingRebate Bonus'.obs,
        amount: '₱ 1,000,000.00'.obs,
        iconPath: ImageConstant.imgJb47x49.obs,
        gradientIndex: 6.obs,
      ),
    ];
  }

  void onInfoPressed() {
    isModalVisible.value = true;
    _showDescriptionDialog();
  }

  void onCopyPressed() {
    Get.snackbar(
      'Copied',
      'Referral link copied to clipboard',
      backgroundColor: appTheme.colorFF85D4,
      colorText: appTheme.whiteCustom,
      duration: Duration(seconds: 2),
    );
  }

  void onSocialIconPressed(String iconPath) {
    Get.snackbar(
      'Share',
      'Sharing via social media',
      backgroundColor: appTheme.colorFF4891,
      colorText: appTheme.whiteCustom,
      duration: Duration(seconds: 2),
    );
  }

  void onRequirementsPressed() {
    Get.snackbar(
      'Requirements',
      'Opening Agent Tier Requirements & Benefits',
      backgroundColor: appTheme.colorFF0093,
      colorText: appTheme.whiteCustom,
      duration: Duration(seconds: 2),
    );
  }

  void _showDescriptionDialog() {
    Get.dialog(
      Dialog(
        backgroundColor: appTheme.colorFF2528,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(color: appTheme.greyCustom),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Description',
                    style: TextStyleHelper.instance.bodyTextBoldSFProText,
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.back();
                      isModalVisible.value = false;
                    },
                    child: Image.asset(
                      ImageConstant.imgGroup848,
                      width: 20,
                      height: 20,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildDescriptionItem(
                    '1. Agent Tier Updates : ',
                    'It will be updated every 1 hours.',
                  ),
                  SizedBox(height: 16),
                  _buildDescriptionItem(
                    '2. Upgrade Requirements: ',
                    'You need to meet the corresponding team member requirement, team betting requirement, and team deposit requirement to upgrade to the next level',
                  ),
                  SizedBox(height: 16),
                  _buildDescriptionItem(
                    '3. Agent Benefits : ',
                    'The higher the agent\'s Tier, the higher the betting rebate rate，deposit rebate,Qualified Bonus',
                  ),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: appTheme.colorFF3236,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(12),
                  bottomRight: Radius.circular(12),
                ),
              ),
              width: double.infinity,
              child: TextButton(
                onPressed: () {
                  Get.back();
                  isModalVisible.value = false;
                },
                child: Text(
                  'Confirm',
                  style: TextStyleHelper.instance.bodyTextBoldArial,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDescriptionItem(String title, String description) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: title,
            style: TextStyleHelper.instance.bodyTextBoldSFProText,
          ),
          TextSpan(
            text: description,
            style: TextStyleHelper.instance.bodyTextSFProText,
          ),
        ],
      ),
    );
  }
}
