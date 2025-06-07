import 'package:flutter/material.dart';
import '../../../../core/app_export.dart';
import '../../../../widgets/custom_image_view.dart';
import '../../../../widgets/custom_app_bar.dart';
import 'controller/achievement_dashboard_controller.dart';
import 'widgets/achievement_item_widget.dart';

class AchievementDashboardScreen extends StatelessWidget {
  AchievementDashboardScreen({Key? key}) : super(key: key);

  final AchievementDashboardController controller =
      Get.put(AchievementDashboardController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: appTheme.colorFF1E20,
        appBar: CustomAppBar(
            logoImagePath: ImageConstant.imgLogowj931,
            balanceAmount: '₱1980.00',
            profileIconPath: ImageConstant.imgGroup736,
            batteryIconPath: ImageConstant.img1LightGreenA700),
        body: Stack(children: [
          SingleChildScrollView(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                _buildCountdownSection(),
                SizedBox(height: 27.h),
                _buildAchievementsList(),
                SizedBox(height: 80.h),
              ])),
          _buildGlowingCircle(),
          Obx(() => controller.isRulesModalVisible.value
              ? _buildRulesModal()
              : SizedBox()),
        ]));
  }

  Widget _buildCountdownSection() {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 13.h, vertical: 10.h),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Row(children: [
            Text('countdown',
                style: TextStyleHelper.instance.body12.copyWith(height: 1.17)),
            Text(':',
                style: TextStyleHelper.instance.body12.copyWith(height: 1.17)),
            Text(' ',
                style: TextStyleHelper.instance.body12
                    .copyWith(color: appTheme.whiteCustom, height: 1.17)),
            Obx(() => Text(
                controller.countdownText!.value ?? '22days 22hr 9min 30 sec',
                style: TextStyleHelper.instance.body14Bold
                    .copyWith(color: appTheme.colorFF85D4, height: 1.17))),
          ]),
          SizedBox(height: 8.h),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Row(children: [
              Text('We\'re ',
                  style: TextStyleHelper.instance.label10
                      .copyWith(color: appTheme.colorFF8384, height: 1.4)),
              Text('5 missions short of completion.',
                  style: TextStyleHelper.instance.label10
                      .copyWith(color: appTheme.colorFFFFC6, height: 1.4)),
            ]),
            Row(children: [
              Obx(() => Text(controller.progressText!.value ?? '40/100',
                  style:
                      TextStyleHelper.instance.label10.copyWith(height: 1.4))),
              SizedBox(width: 8.h),
              Text('Rules',
                  style:
                      TextStyleHelper.instance.label10.copyWith(height: 1.4)),
              SizedBox(width: 8.h),
              GestureDetector(
                  onTap: () => controller.openRulesModal(),
                  child: Container(
                      width: 16.h,
                      height: 19.h,
                      decoration: BoxDecoration(
                          border: Border.all(color: appTheme.colorFFFFC6),
                          borderRadius: BorderRadius.circular(8.h)),
                      child: Center(
                          child: Text('?',
                              style: TextStyleHelper.instance.body12Black)))),
            ]),
          ]),
        ]));
  }

  Widget _buildGlowingCircle() {
    return Positioned(
        top: 189.h,
        left: 121.h,
        child: Container(
            width: 143.h,
            height: 143.h,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color(0x4DD3F660),
                      appTheme.color4D8CF6,
                    ]),
                borderRadius: BorderRadius.circular(71.5.h),
                boxShadow: [
                  BoxShadow(
                      color: appTheme.colorFF8888,
                      blurRadius: 95.h,
                      offset: Offset(0, 4.h)),
                ])));
  }

  Widget _buildAchievementsList() {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 19.h),
        padding: EdgeInsets.fromLTRB(51.h, 51.h, 51.h, 20.h),
        decoration: BoxDecoration(
            color: appTheme.color300303,
            border: Border.all(color: appTheme.color458E8E),
            borderRadius: BorderRadius.circular(10.h),
            boxShadow: [
              BoxShadow(
                  color: appTheme.colorFF8888,
                  blurRadius: 11.h,
                  offset: Offset(0, 4.h)),
            ]),
        child: Stack(children: [
          Positioned(
              top: -37.h,
              left: -41.h,
              child: Opacity(
                  opacity: 0.5,
                  child: CustomImageView(
                      imagePath: ImageConstant.img,
                      width: 588.h,
                      height: 30.h))),
          Column(children: [
            Obx(() => ListView.separated(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: controller.achievements.length,
                separatorBuilder: (context, index) => Container(
                    height: 1.h,
                    color: appTheme.colorFF4045,
                    margin: EdgeInsets.symmetric(vertical: 16.h)),
                itemBuilder: (context, index) {
                  return AchievementItemWidget(
                      achievement: controller.achievements[index],
                      onButtonPressed: () =>
                          controller.handleAchievementAction(index));
                })),
          ]),
        ]));
  }

  Widget _buildRulesModal() {
    return GestureDetector(
        onTap: () => controller.closeRulesModal(),
        child: Container(
            color: appTheme.colorCC0000,
            child: Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                    width: double.infinity,
                    padding: EdgeInsets.all(20.h),
                    decoration: BoxDecoration(
                        color: appTheme.colorFF2528,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(8.h),
                            topRight: Radius.circular(8.h))),
                    child: Stack(children: [
                      Column(mainAxisSize: MainAxisSize.min, children: [
                        Text('Rule',
                            style: TextStyleHelper.instance.title18Bold
                                .copyWith(height: 1.0, shadows: [
                              Shadow(
                                  color: appTheme.blackCustom,
                                  offset: Offset(2.h, 2.h),
                                  blurRadius: 2.h),
                            ]),
                            textAlign: TextAlign.center),
                        SizedBox(height: 24.h),
                        Text(
                            'You will receive the corresponding reward if you invite a sufficient number of eligible users within the specified time',
                            style: TextStyleHelper.instance.body15
                                .copyWith(height: 1.2)),
                      ]),
                      Positioned(
                          top: 0,
                          right: 0,
                          child: GestureDetector(
                              onTap: () => controller.closeRulesModal(),
                              child: CustomImageView(
                                  imagePath: ImageConstant.imgGroup,
                                  width: 32.h,
                                  height: 32.h))),
                    ])))));
  }
}
