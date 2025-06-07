import 'package:flutter/material.dart';

import '../../../../../core/app_export.dart';
import '../../../../../widgets/custom_image_view.dart';
import '../models/ranking_item_model.dart';

class RankingItemWidget extends StatelessWidget {
  final RankingItemModel rankingModel;
  final bool isUserRank;

  RankingItemWidget({
    Key? key,
    required this.rankingModel,
    this.isUserRank = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40.h,
      color: isUserRank ? Color(0xFF85D420) : appTheme.colorFF1E20,
      child: Stack(
        children: [
          if (isUserRank)
            Positioned(
              left: 0,
              top: 0,
              child: Stack(
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgRectangle34625104,
                    height: 14.h,
                    width: 28.h,
                  ),
                  Positioned(
                    top: 1.h,
                    left: 3.h,
                    child: Text(
                      'Your',
                      style: TextStyleHelper.instance.label10Bold,
                    ),
                  ),
                ],
              ),
            ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                if (rankingModel.hasMedal?.value ?? false)
                  CustomImageView(
                    imagePath: rankingModel.medalImage?.value ?? '',
                    height: 26.h,
                    width: 26.h,
                  )
                else
                  Container(
                    width: 26.h,
                    child: Text(
                      rankingModel.rank?.value.toString() ?? '',
                      style: TextStyleHelper.instance.body12,
                      textAlign: TextAlign.center,
                    ),
                  ),
                Text(
                  rankingModel.userId?.value ?? '',
                  style: TextStyleHelper.instance.label11
                      .copyWith(color: appTheme.whiteCustom),
                ),
                Text(
                  rankingModel.inviteQuantity?.value ?? '',
                  style: TextStyleHelper.instance.label11,
                ),
                Text(
                  rankingModel.prize?.value ?? '',
                  style: TextStyleHelper.instance.label11,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
