import 'package:flutter/material.dart';

import '../../../../core/app_export.dart';
import '../../../../widgets/custom_image_view.dart';
import '../controller/junior_agent_dashboard_controller.dart';
import '../models/bonus_item_model.dart';

class TodayIncomeCardWidget extends StatelessWidget {
  TodayIncomeCardWidget({Key? key}) : super(key: key);

  var controller = Get.find<JuniorAgentDashboardController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: appTheme.colorFF2528,
        borderRadius: BorderRadius.circular(10.h),
      ),
      padding: EdgeInsets.all(16.h),
      child: Column(
        children: [
          _buildTodayHeader(),
          SizedBox(height: 24.h),
          _buildBonusGrid(),
          SizedBox(height: 16.h),
          _buildAgentRankingBonus(),
        ],
      ),
    );
  }

  Widget _buildTodayHeader() {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgVector1,
              height: 30.h,
              width: 20.h,
            ),
            SizedBox(width: 8.h),
            Text(
              'Today',
              style: TextStyleHelper.instance.title20Black,
            ),
            SizedBox(width: 8.h),
            CustomImageView(
              imagePath: ImageConstant.imgVector30x20,
              height: 30.h,
              width: 20.h,
            ),
          ],
        ),
        SizedBox(height: 8.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '₱70,577,000.00',
              style: TextStyleHelper.instance.headline26Bold,
            ),
            SizedBox(width: 8.h),
            CustomImageView(
              imagePath: ImageConstant.imgVectorBlueGray40016x16,
              height: 16.h,
              width: 16.h,
            ),
          ],
        ),
        SizedBox(height: 4.h),
        Text(
          'today\'s income',
          style: TextStyleHelper.instance.body14
              .copyWith(color: appTheme.colorFF8089),
        ),
      ],
    );
  }

  Widget _buildBonusGrid() {
    return GridView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 16.h,
        mainAxisSpacing: 16.h,
        childAspectRatio: 1.2,
      ),
      itemCount: _getBonusItems().length,
      itemBuilder: (context, index) {
        final bonusItem = _getBonusItems()[index];
        return _buildBonusCard(bonusItem);
      },
    );
  }

  Widget _buildBonusCard(BonusItemModel bonusItem) {
    return GestureDetector(
      onTap: () => controller.onBonusCardTap(bonusItem.title?.value ?? ''),
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment(-0.221, 0),
            end: Alignment(1, 1),
            colors: bonusItem.gradientColors?.value ??
                [Color(0xFF14BFEC), Color(0xFF006CD9)],
          ),
          borderRadius:
              BorderRadius.circular(bonusItem.borderRadius?.value ?? 5.h),
        ),
        padding: EdgeInsets.all(16.h),
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: bonusItem.titleAlignment?.value == 'center'
                  ? CrossAxisAlignment.center
                  : CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  bonusItem.title?.value ?? '',
                  style: TextStyleHelper.instance.body12
                      .copyWith(color: appTheme.whiteCustom),
                  textAlign: bonusItem.titleAlignment?.value == 'center'
                      ? TextAlign.center
                      : TextAlign.left,
                ),
                SizedBox(height: 4.h),
                Text(
                  bonusItem.amount?.value ?? '',
                  style: TextStyleHelper.instance.title16Bold
                      .copyWith(color: appTheme.whiteCustom),
                  textAlign: bonusItem.amountAlignment?.value == 'center'
                      ? TextAlign.center
                      : TextAlign.left,
                ),
              ],
            ),
            Positioned(
              top: 8.h,
              right: 8.h,
              child: CustomImageView(
                imagePath: ImageConstant.imgJb47x49,
                height: 47.h,
                width: 49.h,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildAgentRankingBonus() {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(-0.221, 0),
          end: Alignment(1, 1),
          colors: [Color(0xFFC498FA), Color(0xFF1A68FE)],
        ),
        borderRadius: BorderRadius.circular(7.h),
      ),
      padding: EdgeInsets.all(16.h),
      child: Stack(
        children: [
          Center(
            child: Column(
              children: [
                Text(
                  'Agent Ranking Bonus',
                  style: TextStyleHelper.instance.body12
                      .copyWith(color: appTheme.whiteCustom),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 4.h),
                Text(
                  '₱ 100,000.00',
                  style: TextStyleHelper.instance.title16Bold
                      .copyWith(color: appTheme.whiteCustom),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
          Positioned(
            top: 8.h,
            right: 48.h,
            child: CustomImageView(
              imagePath: ImageConstant.imgJb47x49,
              height: 47.h,
              width: 49.h,
            ),
          ),
        ],
      ),
    );
  }

  List<BonusItemModel> _getBonusItems() {
    return [
      BonusItemModel(
        title: 'Registration Bonus'.obs,
        amount: '₱ 7,550.00'.obs,
        gradientColors: Rx([
          Color(0xFF14BFEC),
          Color(0xFF006CD9)
        ]), // Modified: Fixed RxList to Rx<List<Color>>
        borderRadius: 7.h.obs,
        titleAlignment: 'left'.obs,
        amountAlignment: 'left'.obs,
      ),
      BonusItemModel(
        title: 'Deposit Bonus'.obs,
        amount: '₱ 1,000,000.00'.obs,
        gradientColors: Rx([
          Color(0xFF7669F0),
          Color(0xFFC89BFB)
        ]), // Modified: Fixed RxList to Rx<List<Color>>
        borderRadius: 5.h.obs,
        titleAlignment: 'left'.obs,
        amountAlignment: 'left'.obs,
      ),
      BonusItemModel(
        title: 'Qualified Bonus'.obs,
        amount: '₱ 90,000.00'.obs,
        gradientColors: Rx([
          Color(0xFF7669F0),
          Color(0xFFC89BFB)
        ]), // Modified: Fixed RxList to Rx<List<Color>>
        borderRadius: 5.h.obs,
        titleAlignment: 'left'.obs,
        amountAlignment: 'left'.obs,
      ),
      BonusItemModel(
        title: 'Achievement Bonus'.obs,
        amount: '₱ 30,000.00'.obs,
        gradientColors: Rx([
          Color(0xFF14BFEC),
          Color(0xFF006CD9)
        ]), // Modified: Fixed RxList to Rx<List<Color>>
        borderRadius: 5.h.obs,
        titleAlignment: 'left'.obs,
        amountAlignment: 'left'.obs,
      ),
      BonusItemModel(
        title: 'Deposit Rebate Bonus'.obs,
        amount: '₱ 200,000.00'.obs,
        gradientColors: Rx([
          Color(0xFF09ECAC),
          Color(0xFF1A68FE)
        ]), // Modified: Fixed RxList to Rx<List<Color>>
        borderRadius: 7.h.obs,
        titleAlignment: 'center'.obs,
        amountAlignment: 'center'.obs,
      ),
      BonusItemModel(
        title: 'BettingRebate Bonus'.obs,
        amount: '₱ 599,000.00'.obs,
        gradientColors: Rx([
          Color(0xFFEE47AB),
          Color(0xFFFFC74F)
        ]), // Modified: Fixed RxList to Rx<List<Color>>
        borderRadius: 5.h.obs,
        titleAlignment: 'center'.obs,
        amountAlignment: 'center'.obs,
      ),
    ];
  }
}
