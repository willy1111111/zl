import 'package:flutter/material.dart';

import '../../../../core/app_export.dart';
import '../../../../widgets/custom_gradient_button.dart';
import '../../../../widgets/custom_image_view.dart';
import '../../../../widgets/custom_label_value_text.dart';
import '../../../../widgets/custom_level_display.dart';
import '../../../../widgets/custom_promotion_card.dart';
import '../../../../widgets/custom_promotional_card.dart';
import '../../../../widgets/custom_vip_app_bar.dart';
import './controller/vip_monthly_salary_benefits_controller.dart';
import './models/vip_level_item_model.dart';

class VipMonthlySalaryBenefitsScreen
    extends GetWidget<VipMonthlySalaryBenefitsController> {
  const VipMonthlySalaryBenefitsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.colorFF1E20,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(86.h),
        child: CustomVipAppBar(
          title: 'Vip',
          amount: '₱19800.00',
          onLeadingPressed: () => Get.back(),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 16.h),
            _buildPromotionCards(),
            _buildScrollIndicators(),
            _buildVipMonthlySalaryInfo(),
            _buildVipBirthdayBonusCard(),
            _buildVipRequirementsTable(),
            SizedBox(height: 16.h),
          ],
        ),
      ),
    );
  }

  Widget _buildPromotionCards() {
    return Obx(() => Column(
          children: [
            CustomPromotionCard(
              backgroundImagePath: ImageConstant.img3,
              overlayImagePath: ImageConstant.img74x345,
              gradientColors: [Color(0xFFf8af4d), Color(0xFFbe6c09)],
              borderColor: appTheme.colorFFF9A9,
              margin: EdgeInsets.symmetric(horizontal: 16.h, vertical: 4.h),
              onTap: () => controller.onVipUpgradeCardTap(),
            ),
            CustomPromotionCard(
              backgroundImagePath: ImageConstant.img4,
              overlayImagePath: ImageConstant.img5,
              gradientColors: [Color(0xFFaecad6), Color(0xFF367d9b)],
              borderColor: appTheme.colorFFAECA,
              margin: EdgeInsets.symmetric(horizontal: 16.h, vertical: 4.h),
              onTap: () => controller.onVipWeeklySalaryCardTap(),
            ),
            CustomPromotionCard(
              backgroundImagePath: ImageConstant.img4,
              overlayImagePath: ImageConstant.img6,
              gradientColors: [Color(0xFFb2bcfa), Color(0xFF6657ff)],
              borderColor: appTheme.colorFFB2BC,
              margin: EdgeInsets.symmetric(horizontal: 16.h, vertical: 4.h),
              onTap: () => controller.onVipMonthlySalaryCardTap(),
            ),
          ],
        ));
  }

  Widget _buildScrollIndicators() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16.h, vertical: 16.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgGroup1224,
            height: 12.h,
            width: 32.h,
          ),
          CustomImageView(
            imagePath: ImageConstant.imgGroup1224,
            height: 12.h,
            width: 32.h,
          ),
        ],
      ),
    );
  }

  Widget _buildVipMonthlySalaryInfo() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16.h, vertical: 8.h),
      padding: EdgeInsets.all(16.h),
      decoration: BoxDecoration(
        color: appTheme.colorFF2E31,
        border: Border.all(color: appTheme.colorFF292F),
        borderRadius: BorderRadius.circular(8.h),
      ),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(8.h),
            decoration: BoxDecoration(
              color: appTheme.colorFF1F21,
              border: Border.all(color: appTheme.colorFF292F),
              borderRadius: BorderRadius.circular(8.h),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildInfoHeader(),
                _buildInfoDescription(),
                _buildCollectionTimeLimit(),
                CustomLabelValueText(
                  labelText: 'Monthly collection time:',
                  valueText: '15th of every month 22:00:00',
                  labelColor: appTheme.colorFFF6D1,
                  valueColor: appTheme.whiteCustom,
                  bottomMargin: 16.h,
                ),
                CustomLevelDisplay(
                  labelText: 'Your level：',
                  iconPath: ImageConstant.imgIconvip9,
                  valueText: 'V9',
                  marginBottom: 8.h,
                ),
                CustomLabelValueText(
                  labelText: 'Monthly Salary：',
                  valueText: '₱1999',
                  labelColor: appTheme.whiteCustom,
                  valueColor: appTheme.colorFFFFC6,
                ),
              ],
            ),
          ),
          SizedBox(height: 16.h),
          CustomGradientButton(
            text: 'Receive award',
            onTap: () => controller.onReceiveAwardTap(),
            gradientColors: [Color(0xFFffc61e), Color(0xFFff9f00)],
            borderColor: appTheme.colorFFFFC6,
            textColor: appTheme.whiteCustom,
            padding: EdgeInsets.symmetric(horizontal: 32.h, vertical: 8.h),
          ),
          SizedBox(height: 16.h),
          _buildExpirationCountdown(),
        ],
      ),
    );
  }

  Widget _buildInfoHeader() {
    return Container(
      margin: EdgeInsets.only(bottom: 16.h),
      child: Row(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgGroup1285,
            height: 36.h,
            width: 36.h,
          ),
          SizedBox(width: 12.h),
          Expanded(
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: 'How to get ',
                    style: TextStyleHelper.instance.body14Black,
                  ),
                  TextSpan(
                    text: 'VIP monthly salary',
                    style: TextStyleHelper.instance.body14Black
                        .copyWith(color: appTheme.colorFFF6D1),
                  ),
                ],
              ),
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgSubtract,
            height: 16.h,
            width: 16.h,
          ),
        ],
      ),
    );
  }

  Widget _buildInfoDescription() {
    return Container(
      margin: EdgeInsets.only(bottom: 16.h),
      child: Text(
        'You can receive the monthly salary corresponding to your current VIP level at the designated times every month.',
        style: TextStyleHelper.instance.body12Bold
            .copyWith(color: appTheme.colorFF8089, height: 1.33),
      ),
    );
  }

  Widget _buildCollectionTimeLimit() {
    return Container(
      margin: EdgeInsets.only(bottom: 16.h),
      child: RichText(
        text: TextSpan(
          children: [
            TextSpan(
              text: 'Collection time limit',
              style: TextStyleHelper.instance.body12Bold
                  .copyWith(color: appTheme.colorFFF6D1),
            ),
            TextSpan(
              text:
                  ':Please claim this week\'s rewards within 3 days, otherwise they will be invalid.',
              style: TextStyleHelper.instance.body12Bold
                  .copyWith(color: appTheme.colorFFF6D1),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildExpirationCountdown() {
    return Column(
      children: [
        Text(
          'Expiration countdown',
          style: TextStyleHelper.instance.body12Bold
              .copyWith(color: appTheme.colorFF8089),
        ),
        SizedBox(height: 4.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgGroup1263,
              height: 12.h,
              width: 12.h,
            ),
            SizedBox(width: 8.h),
            Text(
              '2 days 23：59：59',
              style: TextStyleHelper.instance.body12Bold
                  .copyWith(color: appTheme.whiteCustom),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildVipBirthdayBonusCard() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16.h, vertical: 8.h),
      child: CustomPromotionalCard(
        backgroundImagePath: ImageConstant.img4,
        overlayImagePath: ImageConstant.img74x250,
        characterImagePath: ImageConstant.img896611,
        arrowImagePath: ImageConstant.imgGroup1260,
        gradientColors: [Color(0xFF289efe), Color(0xFF0063fb)],
        characterIconSize: Size(77.h, 105.h),
        characterIconOffset: Offset(0, -4.h),
        overlayIconOffset: Offset(95.h, -4.h),
        onTap: () => controller.onVipBirthdayBonusCardTap(),
      ),
    );
  }

  Widget _buildVipRequirementsTable() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16.h),
      padding: EdgeInsets.all(8.h),
      decoration: BoxDecoration(
        color: appTheme.colorFF2528,
        borderRadius: BorderRadius.circular(8.h),
      ),
      child: Column(
        children: [
          _buildTableTitle(),
          _buildTableContainer(),
        ],
      ),
    );
  }

  Widget _buildTableTitle() {
    return Container(
      margin: EdgeInsets.only(bottom: 16.h),
      child: Stack(
        alignment: Alignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgRectangle568,
            height: 39.h,
            width: 282.h,
            fit: BoxFit.cover,
          ),
          Text(
            'Upgrade VIP requirements',
            style: TextStyleHelper.instance.title16Bold
                .copyWith(color: appTheme.whiteCustom, shadows: [
              Shadow(
                color: appTheme.blackCustom,
                blurRadius: 2.h,
                offset: Offset(0, 2.h),
              ),
            ]),
          ),
        ],
      ),
    );
  }

  Widget _buildTableContainer() {
    return Container(
      decoration: BoxDecoration(
        color: appTheme.colorFF1E20,
        border: Border.all(color: appTheme.colorFF1516),
        borderRadius: BorderRadius.circular(4.h),
      ),
      child: Column(
        children: [
          _buildTableHeader(),
          Obx(() => Column(
                children: List.generate(
                  controller.vipLevels.length,
                  (index) => _buildTableRow(controller.vipLevels[index], index),
                ),
              )),
        ],
      ),
    );
  }

  Widget _buildTableHeader() {
    return Container(
      height: 50.h,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xFF76cd00), Color(0xFF478a03)],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: Row(
        children: [
          _buildHeaderCell('VIP level', 60.h, null),
          _buildHeaderCell('Deposit amount', 66.h, ImageConstant.imgGroup11886),
          _buildHeaderCell('Bet amount', 65.h, ImageConstant.img8411641),
          _buildHeaderCell('Upgrade bonus', 66.h, ImageConstant.img),
          _buildHeaderCell('weekly cashback', 66.h, ImageConstant.imgBn01),
        ],
      ),
    );
  }

  Widget _buildHeaderCell(String title, double width, String? iconPath) {
    return Container(
      width: width,
      padding: EdgeInsets.symmetric(horizontal: 8.h),
      decoration: BoxDecoration(
        border: Border(
          left: BorderSide(color: Color(0xFF315a007f), width: 1.h),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (iconPath != null) ...[
            CustomImageView(
              imagePath: iconPath,
              height: iconPath.contains('11886')
                  ? 36.h
                  : iconPath.contains('841164')
                      ? 20.h
                      : 28.h,
              width: iconPath.contains('11886')
                  ? 20.h
                  : iconPath.contains('841164')
                      ? 16.h
                      : 20.h,
            ),
            SizedBox(height: 4.h),
          ],
          Text(
            title,
            style: TextStyleHelper.instance.body12Black,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }

  Widget _buildTableRow(VipLevelItemModel model, int index) {
    return Container(
      height: 40.h,
      decoration: BoxDecoration(
        color: index % 2 == 0 ? Color(0xFF25272B) : appTheme.transparentCustom,
      ),
      child: Row(
        children: [
          Container(
            width: 60.h,
            padding: EdgeInsets.symmetric(horizontal: 8.h),
            child: Row(
              children: [
                CustomImageView(
                  imagePath: model.iconPath?.value ?? '',
                  height: 16.h,
                  width: 16.h,
                ),
                SizedBox(width: 4.h),
                Text(
                  model.level?.value ?? '',
                  style: TextStyleHelper.instance.body12Bold
                      .copyWith(color: appTheme.colorFFE1E1),
                ),
              ],
            ),
          ),
          _buildDataCell(model.depositAmount?.value ?? '', 66.h),
          _buildDataCell(model.betAmount?.value ?? '', 65.h),
          _buildDataCell(model.upgradeBonus?.value ?? '', 66.h),
          _buildDataCell(model.weeklyCashback?.value ?? '', 66.h),
        ],
      ),
    );
  }

  Widget _buildDataCell(String text, double width) {
    return Container(
      width: width,
      padding: EdgeInsets.symmetric(horizontal: 8.h),
      child: Text(
        text,
        style: TextStyleHelper.instance.body12Bold
            .copyWith(color: appTheme.colorFF8089),
        textAlign: TextAlign.center,
      ),
    );
  }
}
