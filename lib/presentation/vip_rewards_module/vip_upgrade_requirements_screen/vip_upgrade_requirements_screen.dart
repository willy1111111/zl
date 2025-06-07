import 'package:flutter/material.dart';

import '../../../../core/app_export.dart';
import '../../../../widgets/custom_image_view.dart';
import '../../../../widgets/custom_promotion_card.dart';
import '../../../../widgets/custom_promotional_card.dart';
import '../../../../widgets/custom_vip_app_bar.dart';
import './controller/vip_upgrade_requirements_controller.dart';
import './widgets/vip_level_row_widget.dart';

class VipUpgradeRequirementsScreen
    extends GetWidget<VipUpgradeRequirementsController> {
  const VipUpgradeRequirementsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.colorFF1E20,
      appBar: _buildAppBar(),
      body: _buildBody(),
    );
  }

  PreferredSizeWidget _buildAppBar() {
    return CustomVipAppBar(
      title: 'Vip',
      amount: '₱19800.00',
      onLeadingPressed: () => Get.back(),
      onTrailingPressed: () {},
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      child: Column(
        children: [
          _buildVipProgressCard(),
          _buildBonusCards(),
          _buildRequirementsTable(),
        ],
      ),
    );
  }

  Widget _buildVipProgressCard() {
    return Container(
      margin: EdgeInsets.all(16.h),
      height: 199.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.h),
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color(0xFF522700),
            appTheme.colorFF6347,
          ],
        ),
        boxShadow: [
          BoxShadow(
            color: appTheme.blackCustom,
            offset: Offset(0, 4.h),
            blurRadius: 4.h,
          ),
        ],
      ),
      child: Stack(
        children: [
          Positioned(
            top: 0,
            right: 0,
            child: CustomImageView(
              imagePath: ImageConstant.imgV10,
              height: 125.h,
              width: 125.h,
            ),
          ),
          Positioned(
            top: 55.h,
            left: 28.h,
            child: CustomImageView(
              imagePath: ImageConstant.imgVector,
              height: 20.h,
              width: 20.h,
            ),
          ),
          Positioned(
            top: 41.h,
            left: 51.h,
            child: Text(
              '10',
              style: TextStyleHelper.instance.headline28Black
                  .copyWith(height: 1.4),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: _buildProgressSection(),
          ),
        ],
      ),
    );
  }

  Widget _buildProgressSection() {
    return Container(
      height: 117.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30.h),
          topRight: Radius.circular(30.h),
          bottomRight: Radius.circular(12.h),
        ),
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Color(0xFFEEAD3C),
            appTheme.colorFFF6D1,
          ],
        ),
        boxShadow: [
          BoxShadow(
            color: appTheme.blackCustom,
            offset: Offset(0, -2.h),
            blurRadius: 2.h,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.all(18.h),
            child: Text(
              'Complete the following requirements to upgrade',
              style: TextStyleHelper.instance.body12Bold
                  .copyWith(color: appTheme.colorFF2D0A, height: 1.17),
            ),
          ),
          _buildProgressDetails(),
        ],
      ),
    );
  }

  Widget _buildProgressDetails() {
    return Container(
      height: 64.h,
      margin: EdgeInsets.symmetric(horizontal: 6.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30.h),
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color(0xFFCD8700),
            appTheme.colorFF8A54,
          ],
        ),
      ),
      child: Stack(
        children: [
          Padding(
            padding: EdgeInsets.all(16.h),
            child: Column(
              children: [
                _buildRequirementRow('Deposit Amount', '46', '100'),
                SizedBox(height: 4.h),
                _buildRequirementRow('Bet Amount', '100', '100'),
              ],
            ),
          ),
          Positioned(
            right: 141.h,
            top: 29.h,
            child: CustomImageView(
              imagePath: ImageConstant.imgGroup934,
              height: 5.h,
              width: 123.h,
            ),
          ),
          Positioned(
            right: 141.h,
            top: 55.h,
            child: CustomImageView(
              imagePath: ImageConstant.imgGroup1003,
              height: 5.h,
              width: 126.h,
            ),
          ),
          Positioned(
            right: 0,
            top: 0,
            child: _buildVipLevelBadge(),
          ),
        ],
      ),
    );
  }

  Widget _buildRequirementRow(String label, String current, String total) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 6.h, vertical: 4.h),
          decoration: BoxDecoration(
            color: appTheme.colorFF5C3C,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10.h),
              bottomLeft: Radius.circular(10.h),
              topRight: Radius.circular(2.h),
              bottomRight: Radius.circular(2.h),
            ),
            boxShadow: [
              BoxShadow(
                color: appTheme.blackCustom,
                offset: Offset(0, 2.h),
                blurRadius: 4.h,
              ),
            ],
          ),
          child: Text(
            label,
            style: TextStyleHelper.instance.body14Bold
                .copyWith(color: appTheme.whiteCustom),
          ),
        ),
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: current,
                style: TextStyleHelper.instance.body14Black
                    .copyWith(color: appTheme.colorFFFFC6),
              ),
              TextSpan(
                text: '/$total',
                style: TextStyleHelper.instance.body14Black,
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildVipLevelBadge() {
    return Container(
      height: 64.h,
      width: 64.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(32.h),
        border: Border.all(color: appTheme.colorFFFFF9),
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Color(0xFF646249),
            appTheme.colorFF3634,
            appTheme.colorFF1514,
          ],
        ),
        boxShadow: [
          BoxShadow(
            color: appTheme.blackCustom,
            offset: Offset(0, 2.h),
            blurRadius: 4.h,
          ),
        ],
      ),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(32.h),
          border: Border.all(color: appTheme.colorFFC6B2),
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color(0xFFFFF9CA),
              Color(0xFFE9E29E).withAlpha(128),
            ],
          ),
        ),
        child: Container(
          margin: EdgeInsets.all(4.h),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(28.h),
            border: Border.all(color: appTheme.colorFFFFF9, width: 0),
            boxShadow: [
              BoxShadow(
                color: appTheme.colorFF8888,
                offset: Offset(0, 4.h),
                blurRadius: 1.h,
              ),
            ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'V10',
                style: TextStyleHelper.instance.title20Black,
              ),
              Text(
                '73%',
                style: TextStyleHelper.instance.body12Black
                    .copyWith(color: appTheme.colorFFF6D1),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildBonusCards() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.h),
      child: Column(
        children: [
          SizedBox(height: 16.h),
          CustomPromotionCard(
            backgroundImagePath: ImageConstant.img3,
            overlayImagePath: ImageConstant.img74x345,
            gradientColors: [Color(0xFFF8AF4D), Color(0xFFBE6C09)],
            borderColor: appTheme.colorFFF9A9,
            margin: EdgeInsets.only(bottom: 16.h),
            onTap: () => controller.onVipUpgradeTap(),
          ),
          CustomPromotionCard(
            backgroundImagePath: ImageConstant.img4,
            overlayImagePath: ImageConstant.img6,
            gradientColors: [Color(0xFFAECAD6), Color(0xFF367D9B)],
            borderColor: appTheme.colorFFAECA,
            margin: EdgeInsets.only(bottom: 16.h),
            onTap: () => controller.onWeeklySalaryTap(),
          ),
          CustomPromotionCard(
            backgroundImagePath: ImageConstant.img4,
            overlayImagePath: ImageConstant.img6,
            gradientColors: [Color(0xFFB2BCFA), Color(0xFF6657FF)],
            borderColor: appTheme.colorFFB2BC,
            margin: EdgeInsets.only(bottom: 16.h),
            onTap: () => controller.onMonthlySalaryTap(),
          ),
          CustomPromotionalCard(
            backgroundImagePath: ImageConstant.img4,
            overlayImagePath: ImageConstant.img74x250,
            characterImagePath: ImageConstant.img896611,
            arrowImagePath: ImageConstant.imgGroup1260,
            gradientColors: [Color(0xFF289EFE), Color(0xFF0063FB)],
            characterIconOffset: Offset(0, -4.h),
            overlayIconOffset: Offset(95.h, -4.h),
            onTap: () => controller.onBirthdayBonusTap(),
          ),
        ],
      ),
    );
  }

  Widget _buildRequirementsTable() {
    return Container(
      margin: EdgeInsets.all(16.h),
      decoration: BoxDecoration(
        color: appTheme.colorFF2528,
        borderRadius: BorderRadius.circular(10.h),
      ),
      child: Column(
        children: [
          _buildTableHeader(),
          _buildTableContent(),
        ],
      ),
    );
  }

  Widget _buildTableHeader() {
    return Stack(
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgRectangle568,
          height: 39.h,
          width: 282.h,
        ),
        Positioned.fill(
          child: Center(
            child: Text(
              'Upgrade VIP Requirements',
              style: TextStyleHelper.instance.title16Bold
                  .copyWith(color: appTheme.whiteCustom, shadows: [
                Shadow(
                  color: appTheme.blackCustom,
                  offset: Offset(0, 2.h),
                  blurRadius: 2.h,
                ),
              ]),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildTableContent() {
    return Padding(
      padding: EdgeInsets.all(10.h),
      child: Container(
        decoration: BoxDecoration(
          color: appTheme.colorFF1E20,
          borderRadius: BorderRadius.circular(6.h),
          border: Border.all(color: appTheme.colorFF1516),
        ),
        child: Column(
          children: [
            _buildTableColumnHeaders(),
            _buildTableRows(),
          ],
        ),
      ),
    );
  }

  Widget _buildTableColumnHeaders() {
    return Container(
      height: 50.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(5.h),
          topRight: Radius.circular(5.h),
        ),
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color(0xFF76CD00),
            appTheme.colorFF478A,
          ],
        ),
      ),
      child: Row(
        children: [
          Expanded(
            child: Center(
              child: Text(
                'VIP Level',
                style: TextStyleHelper.instance.body12Black,
              ),
            ),
          ),
          Container(
            width: 1.h,
            height: 50.h,
            color: Color(0xFF315A00).withAlpha(128),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgGroup11886,
                  height: 21.h,
                  width: 35.h,
                ),
                SizedBox(height: 4.h),
                Text(
                  'Deposit Amount',
                  style: TextStyleHelper.instance.body12Bold
                      .copyWith(color: appTheme.whiteCustom),
                ),
              ],
            ),
          ),
          Container(
            width: 1.h,
            height: 50.h,
            color: Color(0xFF315A00).withAlpha(128),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.img8411641,
                  height: 17.h,
                  width: 20.h,
                ),
                SizedBox(height: 4.h),
                Text(
                  'Bet Amount',
                  style: TextStyleHelper.instance.body12Bold
                      .copyWith(color: appTheme.whiteCustom),
                ),
              ],
            ),
          ),
          Container(
            width: 1.h,
            height: 50.h,
            color: Color(0xFF315A00).withAlpha(128),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.img,
                  height: 21.h,
                  width: 27.h,
                ),
                SizedBox(height: 4.h),
                Text(
                  'Upgrade Bonus',
                  style: TextStyleHelper.instance.body12Bold
                      .copyWith(color: appTheme.whiteCustom),
                ),
              ],
            ),
          ),
          Container(
            width: 1.h,
            height: 50.h,
            color: Color(0xFF315A00).withAlpha(128),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgBn01,
                  height: 21.h,
                  width: 27.h,
                ),
                SizedBox(height: 4.h),
                Text(
                  'Weekly Cashback',
                  style: TextStyleHelper.instance.body12Bold
                      .copyWith(color: appTheme.whiteCustom),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTableRows() {
    return Obx(() => Column(
          children: controller.vipLevels
              .map((level) => VipLevelRowWidget(
                    vipLevel: level,
                  ))
              .toList(),
        ));
  }
}
