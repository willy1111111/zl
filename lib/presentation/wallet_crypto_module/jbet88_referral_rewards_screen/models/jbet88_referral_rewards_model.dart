import 'package:get/get.dart';
import '../../../core/app_export.dart';

class Jbet88ReferralRewardsModel {
  Rx<String>? headerText;
  Rx<String>? mainPromotionalText;
  Rx<String>? subText;
  Rx<String>? ctaButtonText;
  Rx<bool>? isAnimationEnabled;

  Jbet88ReferralRewardsModel({
    this.headerText,
    this.mainPromotionalText,
    this.subText,
    this.ctaButtonText,
    this.isAnimationEnabled,
  }) {
    headerText = headerText ?? 'RECOMMEND Jbet88 TO A FRIEND'.obs;
    mainPromotionalText = mainPromotionalText ?? 'AND EARN 500 PHP A DAY'.obs;
    subText = subText ?? 'HAVE YOU RECOMMENDED IT TODAY'.obs;
    ctaButtonText = ctaButtonText ??
        'JBET88 is handing out benefits!\nCome on!\nJoin me in splitting the 500 cash prize'
            .obs;
    isAnimationEnabled = isAnimationEnabled ?? true.obs;
  }
}
