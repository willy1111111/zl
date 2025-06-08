import 'package:flutter/material.dart';

import '../../../core/app_export.dart';
import '../../../widgets/custom_image_view.dart';
import '../models/vip_level_card_model.dart';

class VipLevelCardWidget extends StatelessWidget {
  final VipLevelCardModel vipLevelCard;

  const VipLevelCardWidget({
    Key? key,
    required this.vipLevelCard,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: appTheme.colorFF2528,
        borderRadius: BorderRadius.circular(8.h),
      ),
      child: Column(
        children: [
          _buildVipHeader(),
          _buildDepositRewards(),
        ],
      ),
    );
  }

  Widget _buildVipHeader() {
    return Container(
      height: 165.h,
      child: Stack(
        children: [
          CustomImageView(
            imagePath: vipLevelCard.backgroundImage?.value ?? '',
            width: 141.h,
            height: 165.h,
          ),
          Positioned(
            top: 24.h,
            left: 56.h,
            child: Stack(
              children: [
                CustomImageView(
                  imagePath: vipLevelCard.vipIcon?.value ?? '',
                  width: 56.h,
                  height: 56.h,
                ),
                if (vipLevelCard.hasSpecialBadge?.value ?? false)
                  Positioned(
                    top: _getSpecialBadgeTop(),
                    left: _getSpecialBadgeLeft(),
                    child: Container(
                      width: _getSpecialBadgeSize(),
                      height: _getSpecialBadgeSize(),
                      decoration: BoxDecoration(
                        color: vipLevelCard.specialBadgeColor?.value ??
                            appTheme.transparentCustom,
                        borderRadius: BorderRadius.circular(_getBorderRadius()),
                      ),
                    ),
                  ),
              ],
            ),
          ),
          Positioned(
            top: 8.h,
            left: 64.h,
            child: Text(
              vipLevelCard.vipLevel?.value ?? '',
              style: TextStyleHelper.instance.body14Bold
                  .copyWith(color: appTheme.blackCustom),
            ),
          ),
          Positioned(
            top: 64.h,
            left: 28.h,
            child: Text(
              vipLevelCard.maxAmount?.value ?? '',
              style: TextStyleHelper.instance.headline24Black
                  .copyWith(color: appTheme.blackCustom),
            ),
          ),
          Positioned(
            top: 112.h,
            left: 64.h,
            child: Text(
              'MAX',
              style: TextStyleHelper.instance.body14Bold
                  .copyWith(color: appTheme.blackCustom),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDepositRewards() {
    return Padding(
      padding: EdgeInsets.all(8.h),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Cumulative Deposit',
                style: TextStyleHelper.instance.body12,
              ),
              Text(
                'Get',
                style: TextStyleHelper.instance.body12,
              ),
            ],
          ),
          SizedBox(height: 4.h),
          ...vipLevelCard.depositRewards?.value
                  .map((reward) => _buildRewardRow(
                      reward['deposit'] ?? '', reward['reward'] ?? ''))
                  .toList() ??
              [],
        ],
      ),
    );
  }

  Widget _buildRewardRow(String deposit, String reward) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 2.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            deposit,
            style: TextStyleHelper.instance.body12,
          ),
          Text(
            reward,
            style: TextStyleHelper.instance.body12,
          ),
        ],
      ),
    );
  }

  double _getSpecialBadgeTop() {
    String vipLevel = vipLevelCard.vipLevel?.value ?? '';
    if (vipLevel == 'VIP6') return 24.h;
    if (vipLevel == 'VIP7') return 28.h;
    if (vipLevel == 'VIP8') return 24.h;
    return 24.h;
  }

  double _getSpecialBadgeLeft() {
    String vipLevel = vipLevelCard.vipLevel?.value ?? '';
    if (vipLevel == 'VIP6') return 16.h;
    if (vipLevel == 'VIP7') return 24.h;
    if (vipLevel == 'VIP8') return 20.h;
    return 16.h;
  }

  double _getSpecialBadgeSize() {
    String vipLevel = vipLevelCard.vipLevel?.value ?? '';
    if (vipLevel == 'VIP6') return 19.h;
    if (vipLevel == 'VIP7') return 12.h;
    if (vipLevel == 'VIP8') return 17.h;
    return 19.h;
  }

  double _getBorderRadius() {
    String vipLevel = vipLevelCard.vipLevel?.value ?? '';
    if (vipLevel == 'VIP8') return 2.h;
    return 9.5.h;
  }
}
