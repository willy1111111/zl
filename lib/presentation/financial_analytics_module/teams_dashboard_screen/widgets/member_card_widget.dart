import 'package:flutter/material.dart';

import '../../../core/app_export.dart';
import '../../../widgets/custom_image_view.dart';
import '../models/member_model.dart';

class MemberCardWidget extends StatelessWidget {
  final MemberModel memberModel;

  MemberCardWidget({
    Key? key,
    required this.memberModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: appTheme.colorFF2528,
        borderRadius: BorderRadius.circular(8.h),
        boxShadow: [
          BoxShadow(
            color: appTheme.color888888,
            offset: Offset(0, 4.h),
            blurRadius: 4.h,
          ),
        ],
      ),
      padding: EdgeInsets.all(16.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (memberModel.isNew?.value ?? false) _buildNewBadge(),
          _buildBadges(),
          SizedBox(height: 16.h),
          Text(
            memberModel.id?.value ?? '',
            style: TextStyleHelper.instance.title16Bold,
          ),
          SizedBox(height: 16.h),
          _buildMemberDetails(),
        ],
      ),
    );
  }

  Widget _buildNewBadge() {
    return Positioned(
      top: 0,
      left: 0,
      child: Container(
        decoration: BoxDecoration(
          color: appTheme.colorFFFF6B,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(8.h),
            bottomRight: Radius.circular(6.h),
          ),
        ),
        padding: EdgeInsets.symmetric(horizontal: 4.h, vertical: 2.h),
        child: Text(
          'NEW',
          style: TextStyleHelper.instance.label10Bold
              .copyWith(color: appTheme.whiteCustom),
        ),
      ),
    );
  }

  Widget _buildBadges() {
    return Wrap(
      spacing: 8.h,
      runSpacing: 8.h,
      children: memberModel.badges?.map((badge) {
            return Container(
              decoration: BoxDecoration(
                color: badge.color?.value.withAlpha(51) ??
                    appTheme.transparentCustom,
                borderRadius: BorderRadius.circular(4.h),
              ),
              padding: EdgeInsets.symmetric(horizontal: 4.h, vertical: 2.h),
              child: Text(
                badge.text?.value ?? '',
                style: TextStyleHelper.instance.body12Regular.copyWith(
                    color: badge.color?.value ?? appTheme.whiteCustom),
              ),
            );
          }).toList() ??
          [],
    );
  }

  Widget _buildMemberDetails() {
    return Column(
      children: [
        _buildDetailRow(
            'Registration Date', memberModel.registrationDate?.value ?? ''),
        SizedBox(height: 12.h),
        _buildDetailRow(
            'Deposit Amount', memberModel.depositAmount?.value ?? ''),
        SizedBox(height: 12.h),
        _buildDetailRow('Valid Bet', memberModel.validBet?.value ?? ''),
        SizedBox(height: 12.h),
        _buildDetailRow(
            'Withdrawal Amount', memberModel.withdrawalAmount?.value ?? ''),
        SizedBox(height: 12.h),
        _buildVerificationRow(),
      ],
    );
  }

  Widget _buildDetailRow(String label, String value) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: TextStyleHelper.instance.body14Regular
              .copyWith(color: appTheme.colorFF8089),
        ),
        Text(
          value,
          style: TextStyleHelper.instance.body14Regular
              .copyWith(color: appTheme.colorFFFFC6),
        ),
      ],
    );
  }

  Widget _buildVerificationRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Phone Verification',
          style: TextStyleHelper.instance.body14Regular
              .copyWith(color: appTheme.colorFF8089),
        ),
        Row(
          children: [
            Text(
              memberModel.phoneVerification?.value ?? '',
              style: TextStyleHelper.instance.body14Regular.copyWith(
                  color: (memberModel.isVerified?.value ?? false)
                      ? Color(0xFFFFC600)
                      : appTheme.colorFFFF44),
            ),
            if (memberModel.isVerified?.value ?? false) ...[
              SizedBox(width: 4.h),
              CustomImageView(
                imagePath: ImageConstant.imgFrame2131330103,
                height: 14.h,
                width: 14.h,
              ),
            ],
          ],
        ),
      ],
    );
  }
}
