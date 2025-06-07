import 'package:flutter/material.dart';

import '../../../../../core/app_export.dart';
import '../../../../../widgets/custom_image_view.dart';
import '../models/ranking_item_model.dart';

class RankingItemWidget extends StatelessWidget {
  final RankingItemModel rankingItem;

  RankingItemWidget({
    Key? key,
    required this.rankingItem,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.h),
      decoration: BoxDecoration(
        color: appTheme.colorFF1E20,
        border: Border(
          bottom: BorderSide(
            color: appTheme.colorFF2528,
            width: 1.h,
          ),
        ),
      ),
      child: Row(
        children: [
          SizedBox(
            width: 30.h,
            child: _buildRankDisplay(),
          ),
          SizedBox(width: 12.h),
          SizedBox(
            width: 80.h,
            child: Text(
              rankingItem.username?.value ?? '',
              style: TextStyleHelper.instance.label11
                  .copyWith(color: appTheme.whiteCustom),
            ),
          ),
          Expanded(
            child: Text(
              rankingItem.inviteCount?.value.toString() ?? '0',
              style: TextStyleHelper.instance.label11,
            ),
          ),
          SizedBox(
            width: 60.h,
            child: Text(
              rankingItem.prize?.value ?? '₱0',
              textAlign: TextAlign.end,
              style: TextStyleHelper.instance.label11,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildRankDisplay() {
    if (rankingItem.hasMedal?.value ?? false) {
      return CustomImageView(
        imagePath:
            rankingItem.medalImage?.value ?? ImageConstant.imgFrame2131330004,
        height: 26.h,
        width: 26.h,
      );
    } else {
      return Text(
        rankingItem.rank?.value.toString() ?? '',
        style: TextStyleHelper.instance.body12,
      );
    }
  }
}
