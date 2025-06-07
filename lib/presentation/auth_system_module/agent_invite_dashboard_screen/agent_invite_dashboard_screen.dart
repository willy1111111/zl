import 'package:flutter/material.dart';
import '../../../../core/app_export.dart';
import '../../../../widgets/custom_image_view.dart';
import '../../../../widgets/custom_app_bar.dart';
import 'controller/agent_invite_dashboard_controller.dart';
import 'widgets/benefit_item_widget.dart';
import 'widgets/bonus_card_widget.dart';

class AgentInviteDashboardScreen extends StatelessWidget {
  AgentInviteDashboardScreen({Key? key}) : super(key: key);

  final AgentInviteDashboardController controller =
      Get.put(AgentInviteDashboardController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.colorFF1519,
      appBar: CustomAppBar(
        showBackButton: true,
        backButtonText: 'Back',
        backButtonIcon: ImageConstant.imgUnionWhiteA700,
        title: 'Invite',
        centerTitle: true,
        backgroundColor: appTheme.colorFF2428,
        actions: [
          GestureDetector(
            onTap: () => controller.onInfoPressed(),
            child: CustomImageView(
              imagePath: ImageConstant.imgFrameWhiteA700,
              height: 22.h,
              width: 22.h,
            ),
          ),
        ],
        onBackPressed: () => Get.back(),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.h),
        child: Column(
          children: [
            _buildAgentTierCard(),
            SizedBox(height: 16.h),
            _buildShareSection(),
            SizedBox(height: 16.h),
            _buildTodayEarningsSection(),
            SizedBox(height: 16.h),
            _buildRequirementsInfo(),
          ],
        ),
      ),
    );
  }

  Widget _buildAgentTierCard() {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.h),
        gradient: LinearGradient(
          begin: Alignment(0.132, -1.0),
          end: Alignment(1.0, 1.0),
          colors: [
            Color(0x4C3375FF),
            appTheme.color4C3134,
          ],
        ),
        border: Border.all(
          width: 1.h,
          color: appTheme.colorB23C97,
        ),
      ),
      padding: EdgeInsets.all(16.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'My Agent Tier',
                style: TextStyleHelper.instance.body15BoldArial,
              ),
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: appTheme.colorFFFF9E,
                      borderRadius: BorderRadius.circular(9.h),
                    ),
                    padding:
                        EdgeInsets.symmetric(horizontal: 10.h, vertical: 1.h),
                    child: Text(
                      'Junior Agent I',
                      style: TextStyleHelper.instance.body12BoldArial,
                    ),
                  ),
                  SizedBox(width: 8.h),
                  GestureDetector(
                    onTap: () => controller.onInfoPressed(),
                    child: CustomImageView(
                      imagePath: ImageConstant.imgVectorIndigoA10001,
                      height: 16.h,
                      width: 16.h,
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 16.h),
          Text(
            'Already reached this Agent Tier',
            style: TextStyleHelper.instance.body14BoldArial
                .copyWith(color: appTheme.colorFF849F),
          ),
          SizedBox(height: 16.h),
          _buildBenefitsSection(),
        ],
      ),
    );
  }

  Widget _buildBenefitsSection() {
    return Container(
      decoration: BoxDecoration(
        color: appTheme.colorFF1014,
        borderRadius: BorderRadius.circular(8.h),
      ),
      padding: EdgeInsets.all(16.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'My Benefits',
            style: TextStyleHelper.instance.body15BoldArial,
          ),
          SizedBox(height: 16.h),
          Obx(() => Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: controller.benefitItems
                    .map((benefit) => BenefitItemWidget(benefit: benefit))
                    .toList(),
              )),
          SizedBox(height: 16.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgPolygon55,
                height: 14.h,
                width: 14.h,
              ),
              SizedBox(width: 16.h),
              CustomImageView(
                imagePath: ImageConstant.imgPolygon56,
                height: 14.h,
                width: 14.h,
              ),
            ],
          ),
          SizedBox(height: 16.h),
          Center(
            child: CustomImageView(
              imagePath: ImageConstant.imgGroup2131329969,
              height: 35.h,
              width: 5.h,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildShareSection() {
    return Container(
      decoration: BoxDecoration(
        color: appTheme.colorFF262A,
        borderRadius: BorderRadius.circular(10.h),
      ),
      padding: EdgeInsets.all(16.h),
      child: Column(
        children: [
          Row(
            children: [
              CustomImageView(
                imagePath: ImageConstant.img23653621,
                height: 62.h,
                width: 62.h,
              ),
              SizedBox(width: 16.h),
              Expanded(
                child: Text(
                  'Share with friends',
                  style: TextStyleHelper.instance.title18BoldArial,
                ),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgSubtractWhiteA700,
                height: 18.h,
                width: 18.h,
              ),
            ],
          ),
          SizedBox(height: 16.h),
          Row(
            children: [
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: appTheme.colorFF1519,
                    border: Border.all(color: appTheme.colorFF4891),
                    borderRadius: BorderRadius.circular(6.h),
                  ),
                  padding: EdgeInsets.all(8.h),
                  child: Text(
                    'http://www.jbet88.co?reCode?=arrre...',
                    style: TextStyleHelper.instance.body14Arial,
                  ),
                ),
              ),
              SizedBox(width: 8.h),
              GestureDetector(
                onTap: () => controller.onCopyPressed(),
                child: CustomImageView(
                  imagePath: ImageConstant.imgGroup14499,
                  height: 35.h,
                  width: 35.h,
                ),
              ),
            ],
          ),
          SizedBox(height: 16.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _buildSocialIcon(ImageConstant
                  .img6afbb433afc026dcfdf9fbeec26198a2vibericonlogo1),
              _buildSocialIcon(ImageConstant.imgGroup840),
              _buildSocialIcon(ImageConstant.imgGroup838),
              _buildSocialIcon(ImageConstant.imgGroup12060),
              _buildSocialIcon(ImageConstant.imgTwitter1),
              _buildSocialIcon(ImageConstant.imgGroup12019),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildSocialIcon(String imagePath) {
    return GestureDetector(
      onTap: () => controller.onSocialIconPressed(imagePath),
      child: CustomImageView(
        imagePath: imagePath,
        height: 32.h,
        width: 32.h,
      ),
    );
  }

  Widget _buildTodayEarningsSection() {
    return Container(
      decoration: BoxDecoration(
        color: appTheme.colorFF262A,
        borderRadius: BorderRadius.circular(10.h),
      ),
      padding: EdgeInsets.all(16.h),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Today',
                style: TextStyleHelper.instance.title18BoldArial,
              ),
              GestureDetector(
                onTap: () => controller.onInfoPressed(),
                child: CustomImageView(
                  imagePath: ImageConstant.imgVectorIndigoA1000116x16,
                  height: 16.h,
                  width: 16.h,
                ),
              ),
            ],
          ),
          SizedBox(height: 16.h),
          Column(
            children: [
              Text(
                '₱10,000,000.00',
                style: TextStyleHelper.instance.headline26BoldArial,
              ),
              Text(
                'today\'s income',
                style: TextStyleHelper.instance.body14Arial
                    .copyWith(color: appTheme.colorFF849F),
              ),
            ],
          ),
          SizedBox(height: 16.h),
          Obx(() => GridView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 16.h,
                  mainAxisSpacing: 16.h,
                  childAspectRatio: 1.2,
                ),
                itemCount: controller.bonusCards.length,
                itemBuilder: (context, index) {
                  return BonusCardWidget(
                      bonusCard: controller.bonusCards[index]);
                },
              )),
          SizedBox(height: 16.h),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(7.h),
              gradient: LinearGradient(
                begin: Alignment(0.221, -1.0),
                end: Alignment(1.0, 1.0),
                colors: [
                  Color(0xFFC498FA),
                  appTheme.colorFF1A68,
                ],
              ),
            ),
            padding: EdgeInsets.all(16.h),
            child: Column(
              children: [
                Text(
                  'Agent Ranking Bonus',
                  style: TextStyleHelper.instance.body12Arial
                      .copyWith(color: appTheme.whiteCustom),
                ),
                SizedBox(height: 8.h),
                Text(
                  '₱ 100,000.00',
                  style: TextStyleHelper.instance.title16BoldArial,
                ),
                SizedBox(height: 8.h),
                CustomImageView(
                  imagePath: ImageConstant.imgJb47x49,
                  height: 49.h,
                  width: 47.h,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildRequirementsInfo() {
    return GestureDetector(
      onTap: () => controller.onRequirementsPressed(),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.h),
          gradient: LinearGradient(
            begin: Alignment(0.0, -1.0),
            end: Alignment(0.0, 1.0),
            colors: [
              Color(0xFF151945),
              appTheme.colorFF1519,
            ],
          ),
        ),
        padding: EdgeInsets.all(16.h),
        child: Text(
          'Agent Tier Requirements& Benefits',
          style: TextStyleHelper.instance.body14Arial
              .copyWith(color: appTheme.colorFF0093),
        ),
      ),
    );
  }
}
