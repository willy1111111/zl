import '../../../../core/app_export.dart';
import '../models/game_type_item_model.dart';
import '../models/vip_daily_salary_rewards_model.dart';
import '../models/vip_level_item_model.dart';

class VipDailySalaryRewardsController extends GetxController {
  Rx<VipDailySalaryRewardsModel> vipDailySalaryRewardsModelObj =
      VipDailySalaryRewardsModel().obs;

  RxList<GameTypeItemModel> gameTypes = <GameTypeItemModel>[].obs;
  RxList<VipLevelItemModel> vipLevels = <VipLevelItemModel>[].obs;

  @override
  void onInit() {
    super.onInit();
    _initializeGameTypes();
    _initializeVipLevels();
  }

  void _initializeGameTypes() {
    gameTypes.value = [
      GameTypeItemModel(
        iconPath: ImageConstant.img10733643587.obs,
        title: 'Slot'.obs,
      ),
      GameTypeItemModel(
        iconPath: ImageConstant.img736x36.obs,
        title: 'Fish'.obs,
      ),
      GameTypeItemModel(
        iconPath: ImageConstant.img536x36.obs,
        title: 'Bingo'.obs,
      ),
      GameTypeItemModel(
        iconPath: ImageConstant.img636x36.obs,
        title: 'Sport'.obs,
      ),
      GameTypeItemModel(
        iconPath: ImageConstant.img136x36.obs,
        title: 'Live'.obs,
      ),
      GameTypeItemModel(
        iconPath: ImageConstant.img336x36.obs,
        title: 'Egame'.obs,
      ),
      GameTypeItemModel(
        iconPath: ImageConstant.img236x36.obs,
        title: 'Table'.obs,
      ),
    ];
  }

  void _initializeVipLevels() {
    vipLevels.value = [
      VipLevelItemModel(
        vipIconPath: ImageConstant.imgIconvip1.obs,
        levelText: 'Lv.1'.obs,
        rangeIconPath: ImageConstant.imgUnionGray80005.obs,
        betRanges: [
          '₱ 1 -- ₱ 30'.obs,
          '₱ 300 -- ₱ 700'.obs,
          '₱ 700 -- ₱ 1000'.obs,
          '₱ 1000 -- ₱ 10000'.obs,
          '₱ 10000 and above'.obs,
        ].obs,
        rewards: [
          '₱ 3'.obs,
          '₱ 13'.obs,
          '₱ 33'.obs,
          '₱ 53'.obs,
          '₱ 63'.obs,
        ].obs,
      ),
      VipLevelItemModel(
        vipIconPath: ImageConstant.imgIconvip2.obs,
        levelText: 'Lv.2'.obs,
        rangeIconPath: ImageConstant.imgUnionGray80006.obs,
        betRanges: [
          '₱ 1 -- ₱ 30'.obs,
          '₱ 300 -- ₱ 700'.obs,
          '₱ 700 -- ₱ 1000'.obs,
          '₱ 1000 -- ₱ 10000'.obs,
          '₱ 10000 and above'.obs,
        ].obs,
        rewards: [
          '₱ 3'.obs,
          '₱ 13'.obs,
          '₱ 33'.obs,
          '₱ 53'.obs,
          '₱ 63'.obs,
        ].obs,
      ),
      VipLevelItemModel(
        vipIconPath: ImageConstant.imgIconvip3.obs,
        levelText: 'Lv.3'.obs,
        rangeIconPath: ImageConstant.imgUnionGray80006.obs,
        betRanges: [
          '₱ 1 -- ₱ 30'.obs,
          '₱ 300 -- ₱ 700'.obs,
          '₱ 700 -- ₱ 1000'.obs,
          '₱ 1000 -- ₱ 10000'.obs,
          '₱ 10000 and above'.obs,
        ].obs,
        rewards: [
          '₱ 3'.obs,
          '₱ 13'.obs,
          '₱ 33'.obs,
          '₱ 53'.obs,
          '₱ 63'.obs,
        ].obs,
      ),
      VipLevelItemModel(
        vipIconPath: ImageConstant.imgIconvip4.obs,
        levelText: 'Lv.4'.obs,
        rangeIconPath: ImageConstant.imgUnionGray80006.obs,
        betRanges: [
          '₱ 1 -- ₱ 30'.obs,
          '₱ 300 -- ₱ 700'.obs,
          '₱ 700 -- ₱ 1000'.obs,
          '₱ 1000 -- ₱ 10000'.obs,
          '₱ 10000 and above'.obs,
        ].obs,
        rewards: [
          '₱ 3'.obs,
          '₱ 13'.obs,
          '₱ 33'.obs,
          '₱ 53'.obs,
          '₱ 63'.obs,
        ].obs,
      ),
      VipLevelItemModel(
        vipIconPath: ImageConstant.imgIconvip5.obs,
        levelText: 'Lv.5'.obs,
        rangeIconPath: ImageConstant.imgUnionGray80006.obs,
        betRanges: [
          '₱ 1 -- ₱ 30'.obs,
          '₱ 300 -- ₱ 700'.obs,
          '₱ 700 -- ₱ 1000'.obs,
          '₱ 1000 -- ₱ 10000'.obs,
          '₱ 10000 and above'.obs,
        ].obs,
        rewards: [
          '₱ 3'.obs,
          '₱ 13'.obs,
          '₱ 33'.obs,
          '₱ 53'.obs,
          '₱ 63'.obs,
        ].obs,
      ),
      VipLevelItemModel(
        vipIconPath: ImageConstant.imgIconvip6.obs,
        levelText: 'Lv.6'.obs,
        rangeIconPath: ImageConstant.imgUnionGray80006.obs,
        betRanges: [
          '₱ 1 -- ₱ 30'.obs,
          '₱ 300 -- ₱ 700'.obs,
          '₱ 700 -- ₱ 1000'.obs,
          '₱ 1000 -- ₱ 10000'.obs,
          '₱ 10000 and above'.obs,
        ].obs,
        rewards: [
          '₱ 3'.obs,
          '₱ 13'.obs,
          '₱ 33'.obs,
          '₱ 53'.obs,
          '₱ 63'.obs,
        ].obs,
      ),
      VipLevelItemModel(
        vipIconPath: ImageConstant.imgIconvip7.obs,
        levelText: 'Lv.7'.obs,
        rangeIconPath: ImageConstant.imgUnionGray80006.obs,
        betRanges: [
          '₱ 1 -- ₱ 30'.obs,
          '₱ 300 -- ₱ 700'.obs,
          '₱ 700 -- ₱ 1000'.obs,
          '₱ 1000 -- ₱ 10000'.obs,
          '₱ 10000 and above'.obs,
        ].obs,
        rewards: [
          '₱ 3'.obs,
          '₱ 13'.obs,
          '₱ 33'.obs,
          '₱ 53'.obs,
          '₱ 63'.obs,
        ].obs,
      ),
      VipLevelItemModel(
        vipIconPath: ImageConstant.imgIconvip8.obs,
        levelText: 'Lv.8'.obs,
        rangeIconPath: ImageConstant.imgUnionGray80006.obs,
        betRanges: [
          '₱ 1 -- ₱ 30'.obs,
          '₱ 300 -- ₱ 700'.obs,
          '₱ 700 -- ₱ 1000'.obs,
          '₱ 1000 -- ₱ 10000'.obs,
          '₱ 10000 and above'.obs,
        ].obs,
        rewards: [
          '₱ 3'.obs,
          '₱ 13'.obs,
          '₱ 33'.obs,
          '₱ 53'.obs,
          '₱ 63'.obs,
        ].obs,
      ),
      VipLevelItemModel(
        vipIconPath: ImageConstant.imgIconvip9.obs,
        levelText: 'Lv.9'.obs,
        rangeIconPath: ImageConstant.imgUnionGray80006.obs,
        betRanges: [
          '₱ 1 -- ₱ 30'.obs,
          '₱ 300 -- ₱ 700'.obs,
          '₱ 700 -- ₱ 1000'.obs,
          '₱ 1000 -- ₱ 10000'.obs,
          '₱ 10000 and above'.obs,
        ].obs,
        rewards: [
          '₱ 3'.obs,
          '₱ 13'.obs,
          '₱ 33'.obs,
          '₱ 53'.obs,
          '₱ 63'.obs,
        ].obs,
      ),
      VipLevelItemModel(
        vipIconPath: ImageConstant.imgIconvip10.obs,
        levelText: 'Lv.10'.obs,
        rangeIconPath: ImageConstant.imgUnionGray80006.obs,
        betRanges: [
          '₱ 1 -- ₱ 30'.obs,
          '₱ 300 -- ₱ 700'.obs,
          '₱ 700 -- ₱ 1000'.obs,
          '₱ 1000 -- ₱ 10000'.obs,
          '₱ 10000 and above'.obs,
        ].obs,
        rewards: [
          '₱ 3'.obs,
          '₱ 13'.obs,
          '₱ 33'.obs,
          '₱ 53'.obs,
          '₱ 63'.obs,
        ].obs,
      ),
    ];
  }
}
