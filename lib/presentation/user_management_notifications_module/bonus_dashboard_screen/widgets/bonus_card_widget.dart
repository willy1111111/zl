import 'package:flutter/material.dart';

import '../../../core/app_export.dart';
import '../../../widgets/custom_image_view.dart';
import '../controller/bonus_dashboard_controller.dart';
import '../models/bonus_card_model.dart';

class BonusCardWidget extends StatelessWidget {
  final BonusCardModel bonusCard;

  BonusCardWidget({
    Key? key,
    required this.bonusCard,
  }) : super(key: key);

  var controller = Get.find<BonusDashboardController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: appTheme.colorFF2528,
        borderRadius: BorderRadius.circular(8.h),
        boxShadow: [
          BoxShadow(
            color: appTheme.color888888,
            offset: Offset(0, 4),
            blurRadius: 4,
          ),
        ],
      ),
      padding: EdgeInsets.all(16.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildCardHeader(),
          if (bonusCard.cardType?.value != BonusCardType.simpleBonus) ...[
            SizedBox(height: 12.h),
            _buildDivider(),
            SizedBox(height: 16.h),
            _buildCardContent(),
          ],
        ],
      ),
    );
  }

  Widget _buildCardHeader() {
    return Row(
      children: [
        _buildCardIcon(),
        SizedBox(width: 12.h),
        Expanded(
          child: Text(
            bonusCard.title?.value ?? '',
            style: TextStyleHelper.instance.title16Bold,
          ),
        ),
        Text(
          bonusCard.totalAmount?.value ?? '',
          style: TextStyleHelper.instance.body14Bold
              .copyWith(color: appTheme.colorFFFFC6),
        ),
      ],
    );
  }

  Widget _buildCardIcon() {
    if (bonusCard.hasOverlayIcon?.value ?? false) {
      return Stack(
        children: [
          CustomImageView(
            imagePath: bonusCard.iconPath?.value ?? '',
            height: 32.h,
            width: 32.h,
          ),
          Positioned(
            top: 4.h,
            left: 8.h,
            child: Text(
              bonusCard.overlayText?.value ?? '',
              style: TextStyleHelper.instance.body13Bold.copyWith(height: 1.15),
            ),
          ),
        ],
      );
    }

    return CustomImageView(
      imagePath: bonusCard.iconPath?.value ?? '',
      height: 32.h,
      width: 32.h,
    );
  }

  Widget _buildDivider() {
    return Container(
      height: 1.h,
      color: appTheme.colorFF282F,
    );
  }

  Widget _buildCardContent() {
    switch (bonusCard.cardType?.value) {
      case BonusCardType.spinBonus:
        return _buildSpinBonusContent();
      case BonusCardType.signInBonus:
        return _buildSignInBonusContent();
      case BonusCardType.depositBonus:
        return _buildDepositBonusContent();
      case BonusCardType.inviteBonus:
        return _buildInviteBonusContent();
      case BonusCardType.dailyRebateBonus:
        return _buildDailyRebateBonusContent();
      case BonusCardType.giftsCodeBonus:
        return _buildGiftsCodeBonusContent();
      case BonusCardType.moneyRainBonus:
        return _buildMoneyRainBonusContent();
      case BonusCardType.vipBonus:
        return _buildVipBonusContent();
      case BonusCardType.cumulativeDepositBonus:
        return _buildCumulativeDepositBonusContent();
      case BonusCardType.ticketEventBonus:
        return _buildTicketEventBonusContent();
      case BonusCardType.phoneVerificationBonus:
        return _buildPhoneVerificationBonusContent();
      default:
        return SizedBox.shrink();
    }
  }

  Widget _buildSpinBonusContent() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildDetailsSection(),
        SizedBox(height: 16.h),
        _buildProgressBar(),
        SizedBox(height: 8.h),
        _buildProgressInfo(),
        SizedBox(height: 16.h),
        if (bonusCard.description != null)
          Text(
            bonusCard.description?.value ?? '',
            style: TextStyleHelper.instance.body12Bold
                .copyWith(color: appTheme.colorFF8089),
          ),
        SizedBox(height: 16.h),
        _buildActionButton(),
        SizedBox(height: 8.h),
        if (bonusCard.timeRemaining != null)
          Text(
            bonusCard.timeRemaining?.value ?? '',
            style: TextStyleHelper.instance.body12Bold
                .copyWith(color: appTheme.colorFF8089),
            textAlign: TextAlign.center,
          ),
      ],
    );
  }

  Widget _buildSignInBonusContent() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildDetailsSection(),
        SizedBox(height: 16.h),
        _buildSignInButtons(),
        SizedBox(height: 16.h),
        _buildActivityTimeSection(),
      ],
    );
  }

  Widget _buildDepositBonusContent() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildDepositHighlight(),
        SizedBox(height: 16.h),
        _buildDepositTypesList(),
        SizedBox(height: 16.h),
        _buildActionButton(),
      ],
    );
  }

  Widget _buildInviteBonusContent() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildInviteGrid(),
        SizedBox(height: 16.h),
        _buildActionButton(),
      ],
    );
  }

  Widget _buildDailyRebateBonusContent() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildDetailsSection(),
        SizedBox(height: 16.h),
        _buildActionButton(),
      ],
    );
  }

  Widget _buildGiftsCodeBonusContent() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildDetailsSection(),
        SizedBox(height: 16.h),
        if (bonusCard.description != null)
          Text(
            bonusCard.description?.value ?? '',
            style: TextStyleHelper.instance.body14Bold
                .copyWith(color: appTheme.colorFF8089),
          ),
        SizedBox(height: 16.h),
        _buildSocialIcons(),
        SizedBox(height: 16.h),
        _buildActionButton(),
      ],
    );
  }

  Widget _buildMoneyRainBonusContent() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildRainGrid(),
        SizedBox(height: 16.h),
        _buildActionButton(),
        SizedBox(height: 8.h),
        if (bonusCard.timeInfo != null)
          Text(
            bonusCard.timeInfo?.value ?? '',
            style: TextStyleHelper.instance.body12Bold
                .copyWith(color: appTheme.colorFF8089),
            textAlign: TextAlign.center,
          ),
      ],
    );
  }

  Widget _buildVipBonusContent() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildVipDetailsList(),
        SizedBox(height: 16.h),
        _buildActionButton(),
      ],
    );
  }

  Widget _buildCumulativeDepositBonusContent() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildDetailsSection(),
        SizedBox(height: 16.h),
        _buildActionButton(),
      ],
    );
  }

  Widget _buildTicketEventBonusContent() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildTicketDetailsList(),
        SizedBox(height: 16.h),
        _buildActionButton(),
      ],
    );
  }

  Widget _buildPhoneVerificationBonusContent() {
    return SizedBox.shrink();
  }

  Widget _buildDetailsSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: bonusCard.details?.entries.map((entry) {
            return Padding(
              padding: EdgeInsets.only(bottom: 8.h),
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: '${entry.key}：',
                      style: TextStyleHelper.instance.body14Bold
                          .copyWith(color: appTheme.colorFF8089),
                    ),
                    TextSpan(
                      text: entry.value,
                      style: TextStyleHelper.instance.body14Bold
                          .copyWith(color: appTheme.colorFF85D4),
                    ),
                  ],
                ),
              ),
            );
          }).toList() ??
          [],
    );
  }

  Widget _buildProgressBar() {
    return Container(
      child: Column(
        children: [
          Container(
            height: 8.h,
            decoration: BoxDecoration(
              color: appTheme.colorFF3451,
              borderRadius: BorderRadius.circular(4.h),
            ),
            child: Stack(
              children: [
                FractionallySizedBox(
                  widthFactor: (bonusCard.progressPercentage?.value ?? 0) / 100,
                  child: Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [Color(0xFF85D420), Color(0xFF8EFD00)],
                      ),
                      borderRadius: BorderRadius.circular(4.h),
                    ),
                  ),
                ),
                Positioned(
                  right: 0,
                  top: -3.h,
                  child: Container(
                    width: 14.h,
                    height: 14.h,
                    decoration: BoxDecoration(
                      color: appTheme.colorFFA0FF,
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: appTheme.colorFFE5FF,
                          offset: Offset(1, 1),
                          blurRadius: 1,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildProgressInfo() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          bonusCard.progressText?.value ?? '',
          style: TextStyleHelper.instance.body14Bold,
        ),
        Text(
          bonusCard.progressSubtext?.value ?? '',
          style: TextStyleHelper.instance.body12Bold
              .copyWith(color: appTheme.colorFF8089),
        ),
      ],
    );
  }

  Widget _buildSignInButtons() {
    return Row(
      children: [
        Expanded(
          child: GestureDetector(
            onTap: () => controller.onBonusCardAction(bonusCard),
            child: Container(
              decoration: BoxDecoration(
                color: appTheme.colorFF2B32,
                borderRadius: BorderRadius.circular(18.h),
              ),
              padding: EdgeInsets.symmetric(vertical: 8.h),
              child: Center(
                child: Text(
                  bonusCard.actionButtonText?.value ?? '',
                  style: TextStyleHelper.instance.body14Bold
                      .copyWith(color: appTheme.colorFF85D4),
                ),
              ),
            ),
          ),
        ),
        SizedBox(width: 16.h),
        GestureDetector(
          onTap: () => controller.onSecondaryAction(bonusCard),
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Color(0xFF76CD01), Color(0xFF498D03)],
              ),
              borderRadius: BorderRadius.circular(15.h),
            ),
            padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 8.h),
            child: Text(
              bonusCard.secondaryButtonText?.value ?? '',
              style: TextStyleHelper.instance.body12Bold
                  .copyWith(color: appTheme.whiteCustom),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildActivityTimeSection() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomImageView(
          imagePath: ImageConstant.img,
          height: 16.h,
          width: 16.h,
        ),
        SizedBox(width: 8.h),
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: 'Activity Time: ',
                style: TextStyleHelper.instance.body12Bold
                    .copyWith(color: appTheme.colorFF8089),
              ),
              TextSpan(
                text: '36Day 22:26',
                style: TextStyleHelper.instance.body12Bold
                    .copyWith(color: appTheme.colorFF51A0),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildDepositHighlight() {
    return Container(
      decoration: BoxDecoration(
        color: appTheme.colorFF1E20,
        borderRadius: BorderRadius.circular(8.h),
      ),
      padding: EdgeInsets.all(12.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'First Deposit',
            style: TextStyleHelper.instance.body14Bold,
          ),
          Text(
            '30%',
            style: TextStyleHelper.instance.body14Bold
                .copyWith(color: appTheme.colorFF85D4),
          ),
        ],
      ),
    );
  }

  Widget _buildDepositTypesList() {
    return Column(
      children: bonusCard.depositTypes?.map((depositType) {
            return Padding(
              padding: EdgeInsets.only(bottom: 12.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    depositType.name?.value ?? '',
                    style: TextStyleHelper.instance.body14Bold
                        .copyWith(color: appTheme.colorFF8089),
                  ),
                  Text(
                    depositType.percentage?.value ?? '',
                    style: TextStyleHelper.instance.body14Bold
                        .copyWith(color: appTheme.colorFF85D4),
                  ),
                ],
              ),
            );
          }).toList() ??
          [],
    );
  }

  Widget _buildInviteGrid() {
    return GridView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 2.5,
        crossAxisSpacing: 16.h,
        mainAxisSpacing: 16.h,
      ),
      itemCount: bonusCard.inviteDetails?.length ?? 0,
      itemBuilder: (context, index) {
        final inviteDetail = bonusCard.inviteDetails![index];
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              inviteDetail.label?.value ?? '',
              style: TextStyleHelper.instance.body14Bold
                  .copyWith(color: appTheme.colorFF8089),
            ),
            SizedBox(height: 8.h),
            Text(
              inviteDetail.amount?.value ?? '',
              style: TextStyleHelper.instance.body14Bold
                  .copyWith(color: appTheme.colorFF85D4),
            ),
          ],
        );
      },
    );
  }

  Widget _buildSocialIcons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: bonusCard.socialIcons?.map((iconPath) {
            return Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.h),
              child: CustomImageView(
                imagePath: iconPath,
                height: 32.h,
                width: 32.h,
              ),
            );
          }).toList() ??
          [],
    );
  }

  Widget _buildRainGrid() {
    return Row(
      children: bonusCard.rainDetails?.map((rainDetail) {
            return Expanded(
              child: Column(
                children: [
                  CustomImageView(
                    imagePath: rainDetail.icon?.value ?? '',
                    height: 28.h,
                    width: 28.h,
                  ),
                  SizedBox(height: 4.h),
                  Text(
                    rainDetail.label?.value ?? '',
                    style: TextStyleHelper.instance.body14Bold
                        .copyWith(color: appTheme.colorFF8089),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    rainDetail.amount?.value ?? '',
                    style: TextStyleHelper.instance.body14Bold
                        .copyWith(color: appTheme.colorFF85D4),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            );
          }).toList() ??
          [],
    );
  }

  Widget _buildVipDetailsList() {
    return Column(
      children: bonusCard.vipDetails?.map((vipDetail) {
            return Padding(
              padding: EdgeInsets.only(bottom: 12.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    vipDetail.label?.value ?? '',
                    style: TextStyleHelper.instance.body14Bold
                        .copyWith(color: appTheme.colorFF8089),
                  ),
                  Text(
                    vipDetail.amount?.value ?? '',
                    style: TextStyleHelper.instance.body14Bold
                        .copyWith(color: appTheme.colorFF85D4),
                  ),
                ],
              ),
            );
          }).toList() ??
          [],
    );
  }

  Widget _buildTicketDetailsList() {
    return Column(
      children: bonusCard.ticketDetails?.map((ticketDetail) {
            return Padding(
              padding: EdgeInsets.only(bottom: 12.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    ticketDetail.label?.value ?? '',
                    style: TextStyleHelper.instance.body14Bold
                        .copyWith(color: appTheme.colorFF8089),
                  ),
                  Text(
                    ticketDetail.amount?.value ?? '',
                    style: TextStyleHelper.instance.body14Bold
                        .copyWith(color: appTheme.colorFF85D4),
                  ),
                ],
              ),
            );
          }).toList() ??
          [],
    );
  }

  Widget _buildActionButton() {
    return GestureDetector(
      onTap: () => controller.onBonusCardAction(bonusCard),
      child: Container(
        width: double.maxFinite,
        decoration: BoxDecoration(
          color: appTheme.colorFF2B32,
          borderRadius: BorderRadius.circular(18.h),
        ),
        padding: EdgeInsets.symmetric(vertical: 8.h),
        child: Center(
          child: Text(
            bonusCard.actionButtonText?.value ?? '',
            style: TextStyleHelper.instance.body14Bold
                .copyWith(color: appTheme.colorFF85D4),
          ),
        ),
      ),
    );
  }
}
