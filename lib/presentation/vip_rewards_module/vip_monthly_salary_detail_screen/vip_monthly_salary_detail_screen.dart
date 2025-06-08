import 'package:flutter/material.dart';

import '../../../../core/app_export.dart';
import '../../../../widgets/custom_button.dart';
import '../../../../widgets/custom_image_view.dart';
import '../../../../widgets/custom_label_value_text.dart';
import '../../../../widgets/custom_vip_app_bar.dart';
import '../../../../widgets/custom_vip_card.dart';
import '../../../../widgets/custom_vip_level_display.dart';
import './controller/vip_monthly_salary_detail_controller.dart';
import './widgets/vip_requirement_row_widget.dart';

class VipMonthlySalaryDetailScreen
    extends GetWidget<VipMonthlySalaryDetailController> {
  VipMonthlySalaryDetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: appTheme.colorFF1E20,
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(86.h),
            child: CustomVipAppBar(
                title: 'Vip',
                showCurrency: true,
                currencyAmount: '₱19800.00',
                actionIcon: ImageConstant.img114x16,
                onLeadingPressed: () => Get.back())),
        body: SingleChildScrollView(
            padding: EdgeInsets.all(16.h),
            child: Column(children: [
              _buildVipCards(),
              SizedBox(height: 16.h),
              _buildScrollIndicators(),
              SizedBox(height: 16.h),
              _buildMonthlySalarySection(),
              SizedBox(height: 16.h),
              _buildBirthdayBonusCard(),
              SizedBox(height: 16.h),
              _buildVipRequirementsTable(),
            ])));
  }

  Widget _buildVipCards() {
    return Column(children: [
      // VIP Upgrade Bonus Card
      GestureDetector(
          onTap: () => controller.onUpgradeBonusTap(),
          child: CustomVipCard(
              gradientType: CustomVipCardGradient
                  .yellow, // Modified: Replaced unavailable 'yellowOrange' constant
              backgroundImage: ImageConstant.img3,
              overlayImage: ImageConstant.img74x345,
              height: 70.h,
              borderColor: appTheme.colorFFF9A9)),
      SizedBox(height: 16.h),
      // VIP Weekly Salary Card
      GestureDetector(
          onTap: () => controller.onWeeklySalaryTap(),
          child: CustomVipCard(
              gradientType: CustomVipCardGradient
                  .blue, // Modified: Replaced unavailable 'blueGradient' constant
              backgroundImage: ImageConstant.img4,
              overlayImage: ImageConstant.img5,
              height: 70.h,
              borderColor: appTheme.colorFFAECA)),
      SizedBox(height: 16.h),
      // VIP Monthly Salary Card
      GestureDetector(
          onTap: () => controller.onMonthlySalaryTap(),
          child: CustomVipCard(
              gradientType: CustomVipCardGradient
                  .purple, // Modified: Replaced unavailable 'purpleGradient' constant
              backgroundImage: ImageConstant.img4,
              overlayImage: ImageConstant.img22,
              height: 70.h,
              borderColor: appTheme.colorFFB2BC)),
    ]);
  }

  Widget _buildScrollIndicators() {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.h),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          CustomImageView(
              imagePath: ImageConstant.imgGroup1224, height: 11.h, width: 32.h),
          CustomImageView(
              imagePath: ImageConstant.imgGroup1224, height: 11.h, width: 32.h),
        ]));
  }

  Widget _buildMonthlySalarySection() {
    return Container(
        decoration: BoxDecoration(
            color: appTheme.colorFF2E31,
            border: Border.all(color: appTheme.colorFF292F),
            borderRadius: BorderRadius.circular(8.h)),
        padding: EdgeInsets.all(16.h),
        child: Column(children: [
          Container(
              decoration: BoxDecoration(
                  color: appTheme.colorFF1F21,
                  border: Border.all(color: appTheme.colorFF292F),
                  borderRadius: BorderRadius.circular(8.h)),
              padding: EdgeInsets.all(16.h),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomImageView(
                              imagePath: ImageConstant.imgGroup1285,
                              height: 37.h,
                              width: 37.h),
                          SizedBox(width: 12.h),
                          Expanded(
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                RichText(
                                    text: TextSpan(children: [
                                  TextSpan(
                                      text: 'How to get ',
                                      style: TextStyleHelper
                                          .instance.body14Black
                                          .copyWith(
                                              color: appTheme.whiteCustom,
                                              height: 1.25)),
                                  TextSpan(
                                      text: 'VIP monthly salary',
                                      style: TextStyleHelper
                                          .instance.body14Black
                                          .copyWith(
                                              color: appTheme.colorFFF6D1,
                                              height: 1.25)),
                                ])),
                              ])),
                          CustomImageView(
                              imagePath: ImageConstant.imgSubtract,
                              height: 16.h,
                              width: 16.h),
                        ]),
                    SizedBox(height: 16.h),
                    Text(
                        'You can receive the monthly salary corresponding to your current VIP level at the designated times every month.',
                        style: TextStyleHelper.instance.body12Bold.copyWith(
                            color: appTheme.colorFF8089, height: 1.33)),
                    SizedBox(height: 16.h),
                    CustomLabelValueText(
                        labelText: 'Collection time limit',
                        valueText:
                            'Please claim this week\'s rewards within 3 days, otherwise they will be invalid.',
                        labelColor: appTheme.colorFFF6D1,
                        valueColor: appTheme.colorFFF6D1,
                        fontSize: 12.fSize,
                        lineHeight: 1.33,
                        bottomMargin: 16.h),
                    CustomLabelValueText(
                        labelText: 'Monthly collection time:',
                        valueText: '15th of every month 22:00:00',
                        labelColor: appTheme.colorFFF6D1,
                        valueColor: appTheme.whiteCustom,
                        fontSize: 14.fSize,
                        bottomMargin: 16.h),
                    CustomVipLevelDisplay(
                        vipLevel: 'V9',
                        vipIconPath: ImageConstant.imgIconvip17),
                    SizedBox(height: 8.h),
                    CustomLabelValueText(
                        labelText: 'Monthly Salary：',
                        valueText: '₱1999',
                        labelColor: appTheme.whiteCustom,
                        valueColor: appTheme.colorFFFFC6,
                        fontSize: 14.fSize),
                  ])),
          SizedBox(height: 16.h),
          CustomButton(
              variant: CustomButtonVariant.text,
              text: 'Receive award',
              width: 150.h,
              height: 36.h,
              gradientColors: [Color(0xFFFFC61E), Color(0xFFFF9F00)],
              borderColor: appTheme.colorFFFFC6,
              borderWidth: 1.h,
              borderRadius: 6.h,
              textStyle: TextStyleHelper.instance.body14Bold,
              onTap: () => controller.onReceiveAwardTap()),
          SizedBox(height: 16.h),
          Column(children: [
            Text('Expiration countdown',
                style: TextStyleHelper.instance.body12Bold
                    .copyWith(color: appTheme.colorFF8089, height: 1.17)),
            SizedBox(height: 4.h),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              CustomImageView(
                  imagePath: ImageConstant.imgGroup1263,
                  height: 13.h,
                  width: 12.h),
              SizedBox(width: 4.h),
              Obx(() => Text(
                  controller.countdownTime!.value ?? '2 days 23：59：59',
                  style: TextStyleHelper.instance.body12Bold
                      .copyWith(color: appTheme.whiteCustom, height: 1.17))),
            ]),
          ]),
        ]));
  }

  Widget _buildBirthdayBonusCard() {
    return GestureDetector(
        onTap: () => controller.onBirthdayBonusTap(),
        child: Container(
            height: 70.h,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Color(0xFF289EFE), Color(0xFF0063FB)]),
                border: Border.all(color: appTheme.colorFF289E),
                borderRadius: BorderRadius.circular(8.h)),
            child: Stack(children: [
              CustomImageView(
                  imagePath: ImageConstant.img4,
                  height: 70.h,
                  width: double.infinity,
                  fit: BoxFit.cover),
              Positioned(
                  top: -4.h,
                  left: 1.h,
                  child: CustomImageView(
                      imagePath: ImageConstant.img896611,
                      height: 105.h,
                      width: 77.h)),
              Positioned(
                  top: -4.h,
                  left: 95.h,
                  child: CustomImageView(
                      imagePath: ImageConstant.img74x250,
                      height: 74.h,
                      width: 250.h)),
              Positioned(
                  top: 23.h,
                  right: 7.h,
                  child: CustomImageView(
                      imagePath: ImageConstant.imgGroup1254,
                      height: 32.h,
                      width: 24.h)),
            ])));
  }

  Widget _buildVipRequirementsTable() {
    return Container(
        decoration: BoxDecoration(
            color: appTheme.colorFF2528,
            borderRadius: BorderRadius.circular(10.h)),
        padding: EdgeInsets.all(10.h),
        child: Container(
            decoration: BoxDecoration(
                color: appTheme.colorFF1E20,
                borderRadius: BorderRadius.circular(6.h)),
            child: Column(children: [
              Container(
                  height: 50.h,
                  decoration: BoxDecoration(boxShadow: [
                    BoxShadow(
                        color: appTheme.blackCustom,
                        offset: Offset(0, 2.h),
                        blurRadius: 2.h),
                  ]),
                  child: Center(
                      child: Text('Upgrade VIP requirements',
                          style: TextStyleHelper.instance.title16Bold.copyWith(
                              color: appTheme.whiteCustom, height: 0.875)))),
              _buildTableHeader(),
              Obx(() => Column(
                      children: controller.vipRequirements.map((requirement) {
                    return VipRequirementRowWidget(
                        vipRequirementItem: requirement);
                  }).toList())),
              Stack(children: [
                Positioned(
                    top: 0,
                    left: 32.h,
                    child: CustomImageView(
                        imagePath: ImageConstant.imgRectangle568,
                        height: 39.h,
                        width: 282.h)),
              ]),
            ])));
  }

  Widget _buildTableHeader() {
    return Container(
        height: 50.h,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Color(0xFF76CD00), Color(0xFF478A03)]),
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(5.h), topRight: Radius.circular(5.h))),
        child: Row(children: [
          Container(
              width: 60.h,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('VIP level',
                        style: TextStyleHelper.instance.body12Black),
                  ])),
          Container(
              width: 66.h,
              decoration: BoxDecoration(
                  border:
                      Border(left: BorderSide(color: appTheme.color7F315A))),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgGroup11886,
                        height: 35.h,
                        width: 21.h),
                    SizedBox(height: 4.h),
                    Text('Deposit amount',
                        style: TextStyleHelper.instance.body12Black),
                  ])),
          Container(
              width: 65.h,
              decoration: BoxDecoration(
                  border:
                      Border(left: BorderSide(color: appTheme.color7F315A))),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomImageView(
                        imagePath: ImageConstant.img8411641,
                        height: 20.h,
                        width: 17.h),
                    SizedBox(height: 4.h),
                    Text('Bet amount',
                        style: TextStyleHelper.instance.body12Black),
                  ])),
          Container(
              width: 66.h,
              decoration: BoxDecoration(
                  border:
                      Border(left: BorderSide(color: appTheme.color7F315A))),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomImageView(
                        imagePath: ImageConstant.img21x27,
                        height: 27.h,
                        width: 21.h),
                    SizedBox(height: 4.h),
                    Text('Upgrade bonus',
                        style: TextStyleHelper.instance.body12Black),
                  ])),
          Container(
              width: 66.h,
              decoration: BoxDecoration(
                  border:
                      Border(left: BorderSide(color: appTheme.color7F315A))),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgBn01,
                        height: 27.h,
                        width: 21.h),
                    SizedBox(height: 4.h),
                    Text('weekly cashback',
                        style: TextStyleHelper.instance.body12Black),
                  ])),
        ]));
  }
}
