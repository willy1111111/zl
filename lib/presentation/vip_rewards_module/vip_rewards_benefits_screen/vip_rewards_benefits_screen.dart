import 'package:flutter/material.dart';

import '../../../../core/app_export.dart';
import '../../../../widgets/custom_image_view.dart';
import '../../../../widgets/custom_promotion_card.dart';
import '../../../../widgets/custom_promotional_card.dart';
import '../../../../widgets/custom_vip_app_bar.dart';
import './controller/vip_rewards_benefits_controller.dart';
import './widgets/vip_level_item_widget.dart';

class VipRewardsBenefitsScreen extends GetWidget<VipRewardsBenefitsController> {
  VipRewardsBenefitsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.colorFF1E20,
      body: Column(
        children: [
          CustomVipAppBar(
            title: 'Vip',
            amount: '₱19800.00',
            onLeadingPressed: () => Get.back(),
          ),
          Expanded(
            child: SingleChildScrollView(
              padding: EdgeInsets.all(16.h),
              child: Column(
                children: [
                  _buildVipBonusCards(),
                  SizedBox(height: 24.h),
                  _buildDecorativeElements(),
                  SizedBox(height: 24.h),
                  _buildBirthdayBonusInfo(),
                  SizedBox(height: 24.h),
                  _buildVipRequirementsTable(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildVipBonusCards() {
    return Column(
      children: [
        CustomPromotionCard(
          backgroundImagePath: ImageConstant.img3,
          overlayImagePath: ImageConstant.img74x345,
          gradientColors: [Color(0xFFf9a94a), Color(0xFFbe6c09)],
          borderColor: appTheme.colorFFF9A9,
          height: 70.h,
          onTap: () => controller.onVipUpgradeTap(),
        ),
        SizedBox(height: 16.h),
        CustomPromotionCard(
          backgroundImagePath: ImageConstant.img4,
          overlayImagePath: ImageConstant.img5,
          gradientColors: [Color(0xFFaecad6), Color(0xFF367d9b)],
          borderColor: appTheme.colorFFAECA,
          height: 70.h,
          onTap: () => controller.onVipWeeklySalaryTap(),
        ),
        SizedBox(height: 16.h),
        CustomPromotionCard(
          backgroundImagePath: ImageConstant.img4,
          overlayImagePath: ImageConstant.img6,
          gradientColors: [Color(0xFFb2bcfa), Color(0xFF6657ff)],
          borderColor: appTheme.colorFFB2BC,
          height: 70.h,
          onTap: () => controller.onVipMonthlySalaryTap(),
        ),
        SizedBox(height: 16.h),
        CustomPromotionalCard(
          backgroundImagePath: ImageConstant.img4,
          overlayImagePath: ImageConstant.img74x250,
          characterImagePath: ImageConstant.img896611,
          arrowImagePath: ImageConstant.imgGroup1260,
          gradientColors: [Color(0xFF289efe), Color(0xFF0063fb)],
          characterIconSize: Size(105.h, 77.h),
          characterIconOffset: Offset(0, -4.h),
          overlayIconOffset: Offset(95.h, -4.h),
          onTap: () => controller.onVipBirthdayBonusTap(),
        ),
      ],
    );
  }

  Widget _buildDecorativeElements() {
    return Row(
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
    );
  }

  Widget _buildBirthdayBonusInfo() {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Color(0xFF37393d), Color(0xFF25282d)],
        ),
        border: Border.all(color: appTheme.colorFF292F),
        borderRadius: BorderRadius.circular(8.h),
      ),
      padding: EdgeInsets.all(16.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgGroup1285,
                height: 36.h,
                width: 36.h,
                margin: EdgeInsets.only(right: 12.h, top: 4.h),
              ),
              Expanded(
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'How to get ',
                        style: TextStyleHelper.instance.body14Black
                            .copyWith(height: 1.4),
                      ),
                      TextSpan(
                        text: 'VIP birthday bonus',
                        style: TextStyleHelper.instance.body14Black
                            .copyWith(color: appTheme.colorFFF6D1, height: 1.4),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 16.h),
          Text(
            'Provide a photo of your ID card and consult CUSTOMER service to receive the corresponding bonus.',
            style: TextStyleHelper.instance.body12Bold
                .copyWith(color: appTheme.colorFF8089, height: 1.2),
          ),
          SizedBox(height: 16.h),
          Text(
            'Collection time limit：Only available on your birthday, otherwise they will be invalid.',
            style: TextStyleHelper.instance.body12Bold
                .copyWith(color: appTheme.colorFF8089, height: 1.2),
          ),
          SizedBox(height: 16.h),
          Row(
            children: [
              Expanded(
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'Apply now：       ',
                        style: TextStyleHelper.instance.body14Black
                            .copyWith(height: 1.2),
                      ),
                      TextSpan(
                        text: 'CUSTOMER',
                        style: TextStyleHelper.instance.body14Black.copyWith(
                            color: appTheme.colorFF00A3,
                            height: 1.2,
                            decoration: TextDecoration.underline),
                      ),
                    ],
                  ),
                ),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgGroup1266,
                height: 20.h,
                width: 20.h,
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildVipRequirementsTable() {
    return Container(
      decoration: BoxDecoration(
        color: appTheme.colorFF2528,
        borderRadius: BorderRadius.circular(10.h),
      ),
      padding: EdgeInsets.all(12.h),
      child: Container(
        decoration: BoxDecoration(
          color: appTheme.colorFF1E20,
          borderRadius: BorderRadius.circular(6.h),
        ),
        padding: EdgeInsets.all(4.h),
        child: Column(
          children: [
            _buildTableHeader(),
            Obx(() => ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: controller.vipLevels.length,
                  itemBuilder: (context, index) {
                    return VipLevelItemWidget(
                      vipLevelItemModel: controller.vipLevels[index],
                    );
                  },
                )),
            SizedBox(height: 16.h),
            _buildTableTitle(),
          ],
        ),
      ),
    );
  }

  Widget _buildTableHeader() {
    return Container(
      height: 50.h,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Color(0xFF76cd00), Color(0xFF478a03)],
        ),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(5.h),
          topRight: Radius.circular(5.h),
        ),
      ),
      child: Row(
        children: [
          Expanded(
            child: Center(
              child: Text(
                'VIP level',
                style: TextStyleHelper.instance.body12Black,
              ),
            ),
          ),
          Container(width: 1.h, height: 50.h, color: Color(0xFF315a007f)),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgGroup11886,
                  height: 36.h,
                  width: 20.h,
                ),
                SizedBox(height: 2.h),
                Text(
                  'Deposit amount',
                  style: TextStyleHelper.instance.body12Bold
                      .copyWith(color: appTheme.whiteCustom),
                ),
              ],
            ),
          ),
          Container(width: 1.h, height: 50.h, color: Color(0xFF315a007f)),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.img8411641,
                  height: 20.h,
                  width: 16.h,
                ),
                SizedBox(height: 2.h),
                Text(
                  'Bet amount',
                  style: TextStyleHelper.instance.body12Bold
                      .copyWith(color: appTheme.whiteCustom),
                ),
              ],
            ),
          ),
          Container(width: 1.h, height: 50.h, color: Color(0xFF315a007f)),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.img,
                  height: 28.h,
                  width: 20.h,
                ),
                SizedBox(height: 2.h),
                Text(
                  'Upgrade bonus',
                  style: TextStyleHelper.instance.body12Bold
                      .copyWith(color: appTheme.whiteCustom),
                ),
              ],
            ),
          ),
          Container(width: 1.h, height: 50.h, color: Color(0xFF315a007f)),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgBn01,
                  height: 28.h,
                  width: 20.h,
                ),
                SizedBox(height: 2.h),
                Text(
                  'weekly cashback',
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

  Widget _buildTableTitle() {
    return Stack(
      alignment: Alignment.center,
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgRectangle568,
          height: 39.h,
          width: 282.h,
        ),
        Container(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: appTheme.blackCustom,
                offset: Offset(0, 2.h),
                blurRadius: 2.h,
              ),
            ],
          ),
          child: Text(
            'Upgrade VIP requirements',
            style: TextStyleHelper.instance.title16Bold
                .copyWith(color: appTheme.whiteCustom),
          ),
        ),
      ],
    );
  }
}
