import 'package:flutter/material.dart';

import '../../../../../core/app_export.dart';
import '../../../../../widgets/custom_image_view.dart';
import '../models/ranking_item_model.dart';

class RankingItemWidget extends StatelessWidget {
  final RankingItemModel rankingModel;
  final int index;

  const RankingItemWidget({
    Key? key,
    required this.rankingModel,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool shouldHaveBackground = index % 2 == 0;
    bool isCurrentUser = rankingModel.isCurrentUser?.value ?? false;

    return Container(
      height: 40.h,
      width: double.infinity,
      margin: EdgeInsets.only(bottom: index == 14 ? 0 : 7.h),
      decoration: BoxDecoration(
        color: isCurrentUser
            ? Color(0xFF85D420)
            : shouldHaveBackground
                ? Color(0xFF1E2024)
                : appTheme.transparentCustom,
      ),
      child: Stack(
        children: [
          if (isCurrentUser)
            Positioned(
              top: 0,
              left: 0,
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
            padding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 10.h),
            child: Row(
              children: [
                // Rank or Medal
                SizedBox(
                  width: 26.h,
                  child: (rankingModel.hasMedal?.value ?? false)
                      ? CustomImageView(
                          imagePath: ImageConstant.imgFrame2131330004,
                          height: 26.h,
                          width: 26.h,
                        )
                      : Text(
                          (rankingModel.rank?.value == 15)
                              ? '15th'
                              : rankingModel.rank?.value.toString() ?? '',
                          style: TextStyleHelper.instance.body12,
                        ),
                ),

                SizedBox(width: 13.h),

                // User ID
                SizedBox(
                  width: 54.h,
                  child: Text(
                    rankingModel.userId?.value ?? '',
                    style: TextStyleHelper.instance.label11
                        .copyWith(color: appTheme.whiteCustom),
                  ),
                ),

                SizedBox(width: 60.h),

                // Invite Count
                SizedBox(
                  width: 13.h,
                  child: Text(
                    rankingModel.inviteCount?.value.toString() ?? '',
                    style: TextStyleHelper.instance.label11,
                  ),
                ),

                Spacer(),

                // Prize
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
