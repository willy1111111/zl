import '../../../../../core/app_export.dart';
import '../models/daily_sign_in_item_model.dart';
import '../models/fourth_day_sign_in_model.dart';
import '../models/sign_in_rule_item_model.dart';

class FourthDaySignInController extends GetxController {
  Rx<FourthDaySignInModel> fourthDaySignInModelObj = FourthDaySignInModel().obs;
  RxList<DailySignInItemModel> dailySignInItems = <DailySignInItemModel>[].obs;
  RxList<SignInRuleItemModel> signInRules = <SignInRuleItemModel>[].obs;

  @override
  void onInit() {
    super.onInit();
    _initializeDailySignInItems();
    _initializeSignInRules();
  }

  void _initializeDailySignInItems() {
    dailySignInItems.value = [
      DailySignInItemModel(
        day: 'Day 1'.obs,
        amount: '0.20'.obs,
        coinImage: ImageConstant.img1733643594.obs,
        isCompleted: true.obs,
        isActive: false.obs,
        amountColor: 0xFFC0C8D2.obs,
        backgroundColor: 0xFF25282D.obs,
        borderColor: 0xFFFFC600.obs,
      ),
      DailySignInItemModel(
        day: 'Day 2'.obs,
        amount: '0.20'.obs,
        coinImage: ImageConstant.img1733643594.obs,
        isCompleted: true.obs,
        isActive: false.obs,
        amountColor: 0xFFC0C8D2.obs,
        backgroundColor: 0xFF25282D.obs,
        borderColor: 0xFFFFC600.obs,
      ),
      DailySignInItemModel(
        day: 'Day 3'.obs,
        amount: '0.20'.obs,
        coinImage: ImageConstant
            .img5dfa96056b444f5e96cae769e22f48911a71a1646f451kzw1wb140x39.obs,
        isCompleted: true.obs,
        isActive: false.obs,
        amountColor: 0xFFFFFFFF.obs,
        backgroundColor: 0xFF25282D.obs,
        borderColor: 0xFFFFC600.obs,
      ),
      DailySignInItemModel(
        day: 'Day 4'.obs,
        amount: '0.20'.obs,
        coinImage: ImageConstant
            .img5dfa96056b444f5e96cae769e22f48911a71a1646f451kzw1wb1.obs,
        isCompleted: true.obs,
        isActive: true.obs,
        amountColor: 0xFFFFFFFF.obs,
        backgroundColor: 0xFF009F41.obs,
        borderColor: 0xFF009F41.obs,
        showBonusText: true.obs,
        bonusText: '+₱0.20'.obs,
      ),
      DailySignInItemModel(
        day: 'Day 5'.obs,
        amount: '₱ 0.20'.obs,
        coinImage: ImageConstant.img1733643594.obs,
        isCompleted: false.obs,
        isActive: false.obs,
        amountColor: 0xFFC0C8D2.obs,
        backgroundColor: 0xFF1E2024.obs,
        borderColor: 0xFF292F36.obs,
      ),
    ];
  }

  void _initializeSignInRules() {
    signInRules.value = [
      SignInRuleItemModel(
        bulletIcon: ImageConstant.imgGroup12650.obs,
        ruleText: '1. Log in to the game every day to sign in.'.obs,
        bulletIconHeight: 12.obs,
        bulletIconWidth: 11.obs,
      ),
      SignInRuleItemModel(
        bulletIcon: ImageConstant.imgGroup12651.obs,
        ruleText: '2. Continuous sign-ins will gradually unlock rewards.'.obs,
        bulletIconHeight: 15.obs,
        bulletIconWidth: 11.obs,
      ),
      SignInRuleItemModel(
        bulletIcon: ImageConstant.imgGroup12649.obs,
        ruleText:
            '3. Please pay attention! After the continuous sign-in is interrupted, it will return to Day 1 and start again.'
                .obs,
        bulletIconHeight: 11.obs,
        bulletIconWidth: 13.obs,
      ),
      SignInRuleItemModel(
        bulletIcon: ImageConstant.imgGroup12647.obs,
        ruleText: '4. Each round of sign-in has '.obs,
        highlightText: '1'.obs,
        highlightColor: 0xFF51A0FF.obs,
        additionalText: ' chance to re-sign.'.obs,
        bulletIconHeight: 14.obs,
        bulletIconWidth: 12.obs,
      ),
      SignInRuleItemModel(
        bulletIcon: ImageConstant.imgGroup12647.obs,
        ruleText: '5.Your remaining number of re-signments: '.obs,
        highlightText: '0'.obs,
        highlightColor: 0xFFF65252.obs,
        bulletIconHeight: 14.obs,
        bulletIconWidth: 12.obs,
      ),
    ];
  }

  void onSignInPressed() {
    Get.snackbar(
      'Sign In',
      'Sign in button pressed',
      backgroundColor: appTheme.colorFF2528,
      colorText: appTheme.whiteCustom,
    );
  }

  @override
  void onClose() {
    super.onClose();
  }
}
