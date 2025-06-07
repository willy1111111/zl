import 'package:get/get.dart';
import '../models/referral_rewards_model.dart';
import '../models/reward_card_model.dart';
import '../models/domain_link_model.dart';
import '../../../../core/app_export.dart';

class ReferralRewardsController extends GetxController {
  Rx<ReferralRewardsModel> referralRewardsModel = ReferralRewardsModel().obs;

  RxList<RewardCardModel> rewardCards = <RewardCardModel>[].obs;
  RxList<DomainLinkModel> domainLinks = <DomainLinkModel>[].obs;

  @override
  void onInit() {
    super.onInit();
    referralRewardsModel.value = ReferralRewardsModel();
    initializeRewardCards();
    initializeDomainLinks();
  }

  void initializeRewardCards() {
    rewardCards.value = [
      RewardCardModel(
        title: 'Qualified Bonus'.obs,
        amount: '+₱168'.obs,
      ),
      RewardCardModel(
        title: 'Achievement Reward'.obs,
        amount: '+₱88888'.obs,
      ),
      RewardCardModel(
        title: 'Deposit Rebate'.obs,
        amount: '+5%'.obs,
      ),
      RewardCardModel(
        title: 'Betting Rebate'.obs,
        amount: '+2.03%'.obs,
      ),
      RewardCardModel(
        title: 'Agent Ranking'.obs,
        amount: '+₱888'.obs,
      ),
    ];
  }

  void initializeDomainLinks() {
    domainLinks.value = [
      DomainLinkModel(
        domainName: 'JBET88.ph'.obs,
      ),
      DomainLinkModel(
        domainName: 'JBET88.cc'.obs,
      ),
    ];
  }

  void onDomainLinkTap(String domain) {
    // Handle domain link tap
    print('Domain tapped: $domain');
  }
}
