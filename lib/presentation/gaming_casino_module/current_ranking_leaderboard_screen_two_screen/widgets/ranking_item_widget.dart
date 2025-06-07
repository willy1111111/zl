import 'package:flutter/material.dart';

import '../../../../../core/app_export.dart';
import '../../../../../widgets/custom_image_view.dart';
import '../models/ranking_item_model.dart';

class RankingItemWidget extends StatelessWidget {
  final RankingItemModel rankingItem;
  final bool isEven;

  RankingItemWidget({
    Key? key,
    required this.rankingItem,
    required this.isEven,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 345.h,
      height: 40.h,
      decoration: BoxDecoration(
        color: isEven ? Color(0xFF1E2024) : appTheme.colorFF2528,
      ),
      padding: EdgeInsets.symmetric(horizontal: 12.h),
      child: Row(
        children: [
          _buildRankDisplay(),
          SizedBox(width: 13.h),
          _buildUserId(),
          SizedBox(width: 60.h),
          _buildInviteCount(),
          SizedBox(width: 107.h),
          _buildPrize(),
        ],
      ),
    );
  }

  Widget _buildRankDisplay() {
    if (rankingItem.isMedal?.value ?? false) {
      return CustomImageView(
        imagePath: rankingItem.medalIcon?.value ?? '',
        width: 26.h,
        height: 26.h,
      );
    } else {
      return SizedBox(
        width: 26.h,
        child: Text(
          rankingItem.rank?.value ?? '',
          style: TextStyleHelper.instance.body12.copyWith(height: 1.17),
        ),
      );
    }
  }

  Widget _buildUserId() {
    return SizedBox(
      width: 54.h,
      child: Text(
        rankingItem.userId?.value ?? '',
        style: TextStyleHelper.instance.label11
            .copyWith(color: appTheme.whiteCustom, height: 1.18),
      ),
    );
  }

  Widget _buildInviteCount() {
    return SizedBox(
      width: 13.h,
      child: Text(
        rankingItem.inviteCount?.value ?? '',
        style: TextStyleHelper.instance.label11.copyWith(height: 1.18),
      ),
    );
  }

  Widget _buildPrize() {
    return SizedBox(
      width: 48.h,
      child: Text(
        rankingItem.prize?.value ?? '',
        style: TextStyleHelper.instance.label11.copyWith(height: 1.18),
      ),
    );
  }
}
