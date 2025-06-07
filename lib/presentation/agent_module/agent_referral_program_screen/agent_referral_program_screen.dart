import 'package:flutter/material.dart';

import '../../../../core/app_export.dart';
import '../../../../widgets/custom_app_bar.dart';
import '../../../../widgets/custom_button.dart';
import '../../../../widgets/custom_image_view.dart';
import './controller/agent_referral_program_controller.dart';
import './models/agent_referral_program_model.dart';
import './widgets/income_item_widget.dart';

class AgentReferralProgramScreen
    extends GetWidget<AgentReferralProgramController> {
  const AgentReferralProgramScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: Container(
        width: double.maxFinite,
        decoration: BoxDecoration(
          color: appTheme.colorFF1E20,
        ),
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Container(
                  width: double.maxFinite,
                  child: Column(
                    children: [
                      _buildHeroSection(),
                      _buildGameElementsSection(),
                      _buildDisclaimerSection(),
                      _buildAgentIncomeSection(),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      statusBarImagePath: ImageConstant.img1Black900,
      logoImagePath: ImageConstant.imgLogowj93128x124,
      balanceAmount: '₱1980.00',
      profileIconPath: ImageConstant.imgGroup736,
      batteryIconPath: ImageConstant.img1LightGreenA700,
    );
  }

  Widget _buildHeroSection() {
    return Container(
      height: 530.h,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.centerLeft,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgImage560,
            height: 530.h,
            width: double.maxFinite,
            fit: BoxFit.cover,
          ),
          Positioned(
            left: 0,
            top: 240.h,
            child: CustomImageView(
              imagePath: ImageConstant.imgImage1064,
              height: 288.h,
              width: 337.h,
            ),
          ),
          Positioned(
            left: 41.h,
            top: 423.h,
            child: CustomImageView(
              imagePath: ImageConstant.imgImage107x93,
              height: 107.h,
              width: 93.h,
            ),
          ),
          Positioned(
            left: 23.h,
            top: 265.h,
            child: CustomImageView(
              imagePath: ImageConstant.imgImage55441x39,
              height: 41.h,
              width: 39.h,
            ),
          ),
          Positioned(
            left: 60.h,
            top: 363.h,
            child: CustomImageView(
              imagePath: ImageConstant.imgImage1067,
              height: 57.h,
              width: 55.h,
            ),
          ),
          Positioned(
            left: 274.h,
            top: 256.h,
            child: CustomImageView(
              imagePath: ImageConstant.imgImage490,
              height: 69.h,
              width: 69.h,
            ),
          ),
          Positioned(
            left: 50.h,
            top: 74.h,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Invite Friends To Earn',
                  style: TextStyleHelper.instance.headline28
                      .copyWith(height: 1.18),
                ),
                SizedBox(height: 2.h),
                Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [Color(0xFFFFF727), Color(0xFFFF9F00)],
                    ),
                  ),
                  child: ShaderMask(
                    shaderCallback: (bounds) => LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [Color(0xFFFFF727), Color(0xFFFF9F00)],
                    ).createShader(bounds),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Rebate Rate: Maximum',
                          style: TextStyleHelper.instance.title22Bold
                              .copyWith(height: 1.18),
                        ),
                        SizedBox(height: 1.h),
                        Text(
                          '0.8%',
                          style: TextStyleHelper.instance.display40Bold
                              .copyWith(height: 1.15),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 4.h),
                CustomButton(
                  text: 'Register & Earn',
                  width: 174.h,
                  height: 40.h,
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Color(0xFF76CD00), Color(0xFF478A03)],
                  ),
                  borderRadius: 6.h,
                  fontSize: 16.fSize,
                  fontWeight: FontWeight.bold,
                  onTap: () => controller.onRegisterTap(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildGameElementsSection() {
    return Container(
      height: 166.h,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Positioned(
            left: 201.h,
            top: 20.h,
            child: CustomImageView(
              imagePath: ImageConstant.imgFw12003,
              height: 150.h,
              width: 150.h,
            ),
          ),
          Positioned(
            left: 218.h,
            top: 66.h,
            child: Container(
              height: 50.h,
              width: 26.h,
              decoration: BoxDecoration(
                color: appTheme.colorFF3634,
                borderRadius: BorderRadius.circular(4.h),
              ),
              child: Center(
                child: CustomImageView(
                  imagePath: ImageConstant.imgJilitaka1,
                  height: 20.h,
                  width: 20.h,
                ),
              ),
            ),
          ),
          Positioned(
            left: 183.h,
            top: 32.h,
            child: CustomImageView(
              imagePath: ImageConstant.imgGroup2131329932,
              height: 68.h,
              width: 82.h,
            ),
          ),
          Positioned(
            bottom: 0,
            child: Container(
              height: 166.h,
              width: double.maxFinite,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Color(0xFF1E2024), Color(0xFF1E2024)],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDisclaimerSection() {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.all(16.h),
      child: Column(
        children: [
          Text(
            '※All agents enjoy the same registration bonus,deposit bonus.They can all participate in achievement rewards and agent ranking bonus.',
            style: TextStyleHelper.instance.body12
                .copyWith(color: appTheme.colorFF8089, height: 1.33),
          ),
          SizedBox(height: 8.h),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text:
                      '※The main difference between agent levels is qualified bonus,and deposit rebate bonus.the ',
                  style: TextStyleHelper.instance.body12
                      .copyWith(color: appTheme.colorFF8089, height: 1.33),
                ),
                TextSpan(
                  text: 'betting rebate Bonus.',
                  style: TextStyleHelper.instance.body12
                      .copyWith(color: appTheme.colorFF8089, height: 1.33),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildAgentIncomeSection() {
    return Container(
      width: double.maxFinite,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Color(0xFF25282D), Color(0xFF1E2024)],
        ),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20.h),
          topRight: Radius.circular(20.h),
        ),
        boxShadow: [
          BoxShadow(
            color: appTheme.color888888,
            offset: Offset(0, 4.h),
            blurRadius: 4.h,
          ),
        ],
      ),
      child: Column(
        children: [
          Container(
            width: double.maxFinite,
            padding: EdgeInsets.fromLTRB(16.h, 16.h, 16.h, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    Positioned(
                      left: 0,
                      top: 5.h,
                      child: Container(
                        height: 16.h,
                        width: 5.h,
                        decoration: BoxDecoration(
                          color: appTheme.colorFF85D4,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 26.h),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'AGENT 7 MAJOR INCOME',
                            style: TextStyleHelper.instance.title22Black
                                .copyWith(height: 1.45),
                          ),
                          SizedBox(height: 2.h),
                          Text(
                            'JILITAKA new referral program',
                            style: TextStyleHelper.instance.title16
                                .copyWith(height: 1.19),
                          ),
                          SizedBox(height: 1.h),
                          Text(
                            'Enjoy 7 super commissions for agents',
                            style: TextStyleHelper.instance.title16.copyWith(
                                color: appTheme.colorFF8089, height: 1.19),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 24.h),
              ],
            ),
          ),
          Container(
            width: double.maxFinite,
            padding: EdgeInsets.fromLTRB(16.h, 0, 16.h, 24.h),
            child: Column(
              children: [
                Obx(() => ListView.separated(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      separatorBuilder: (context, index) =>
                          SizedBox(height: 16.h),
                      itemCount: controller.incomeItems.length,
                      itemBuilder: (context, index) {
                        AgentReferralProgramModel model =
                            controller.incomeItems[index];
                        return IncomeItemWidget(model);
                      },
                    )),
                SizedBox(height: 24.h),
                CustomButton(
                  text: 'invite',
                  width: 345.h,
                  height: 44.h,
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Color(0xFF76CD00), Color(0xFF478A03)],
                  ),
                  borderRadius: 22.h,
                  fontSize: 14.fSize,
                  fontWeight: FontWeight.bold,
                  iconPath: ImageConstant.imgFrameWhiteA700,
                  iconSize: 20.h,
                  onTap: () => controller.onInviteTap(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
