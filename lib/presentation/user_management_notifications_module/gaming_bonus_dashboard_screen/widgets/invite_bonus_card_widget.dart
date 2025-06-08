import 'package:flutter/material.dart';

import '../../../core/app_export.dart';
import '../../../widgets/custom_image_view.dart';
import '../controller/gaming_bonus_dashboard_controller.dart';
import '../models/invite_bonus_item_model.dart';

class InviteBonusCardWidget extends StatelessWidget {
  final InviteBonusItemModel? inviteBonusModel;

  InviteBonusCardWidget({
    Key? key,
    this.inviteBonusModel,
  }) : super(key: key);

  var controller = Get.find<GamingBonusDashboardController>();

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
        children: [
          // Header
          Row(
            children: [
              CustomImageView(
                imagePath: inviteBonusModel?.iconPath?.value ??
                    ImageConstant.imgInvite136x36,
                height: 36.h,
                width: 36.h,
              ),
              SizedBox(width: 12.h),
              Expanded(
                child: Text(
                  inviteBonusModel?.title?.value ?? 'Invite Bonus',
                  style: TextStyleHelper.instance.title16Bold
                      .copyWith(color: appTheme.colorFFFFFF, height: 1.19),
                ),
              ),
              Text(
                'Total: ${inviteBonusModel?.totalAmount?.value ?? '₱19999.80'}',
                style: TextStyleHelper.instance.body14Bold
                    .copyWith(color: appTheme.colorFFFFC6, height: 1.21),
              ),
            ],
          ),

          SizedBox(height: 12.h),

          // Divider
          Container(
            width: double.infinity,
            height: 1.h,
            color: appTheme.colorFF282F,
          ),

          SizedBox(height: 16.h),

          // Bonus Details Grid
          Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildBonusItem(
                      'Invite Registration',
                      inviteBonusModel?.inviteRegistration?.value ?? '₱99',
                    ),
                    SizedBox(height: 16.h),
                    _buildBonusItem(
                      'Invitation Qualified',
                      inviteBonusModel?.invitationQualified?.value ?? '₱10',
                    ),
                    SizedBox(height: 16.h),
                    _buildBonusItem(
                      'Invitees Bonus',
                      inviteBonusModel?.inviteesBonus?.value ?? '₱30',
                    ),
                  ],
                ),
              ),
              SizedBox(width: 16.h),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildBonusItem(
                      'Invite Deposit',
                      inviteBonusModel?.inviteDeposit?.value ?? '₱10',
                    ),
                    SizedBox(height: 16.h),
                    _buildBonusItem(
                      'Betting Rebate',
                      inviteBonusModel?.bettingRebate?.value ?? '₱4900.70',
                    ),
                  ],
                ),
              ),
            ],
          ),

          SizedBox(height: 16.h),

          // Action Button
          GestureDetector(
            onTap: () => controller.onInviteBonusPressed(),
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: appTheme.colorFF2B32,
                borderRadius: BorderRadius.circular(18.h),
              ),
              padding: EdgeInsets.symmetric(vertical: 12.h),
              child: Center(
                child: Text(
                  inviteBonusModel?.actionText?.value ??
                      'Share with your social community',
                  style: TextStyleHelper.instance.body14Bold
                      .copyWith(color: appTheme.colorFF85D4, height: 1.21),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildBonusItem(String label, String amount) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyleHelper.instance.body14Bold
              .copyWith(color: appTheme.colorFF8089, height: 1.21),
        ),
        SizedBox(height: 4.h),
        Text(
          amount,
          style: TextStyleHelper.instance.body14Bold
              .copyWith(color: appTheme.colorFF85D4, height: 1.21),
        ),
      ],
    );
  }
}
