import 'package:flutter/material.dart';

import '../../../../../core/app_export.dart';
import '../../../../../widgets/custom_image_view.dart';
import '../models/ranking_item_model.dart';

class RankingItemWidget extends StatelessWidget {
  final RankingItemModel rankingItemModel;

  RankingItemWidget({
    Key? key,
    required this.rankingItemModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 2.h),
      height: (rankingItemModel.hasAlternateBackground?.value ?? false)
          ? 40.h
          : 28.h,
      decoration: BoxDecoration(
        color: (rankingItemModel.hasAlternateBackground?.value ?? false)
            ? Color(0xFF1E2024)
            : appTheme.transparentCustom,
      ),
      child: Stack(
        children: [
          // Special indicator for 13th rank
          if (rankingItemModel.hasSpecialIndicator?.value ?? false) ...[
            Positioned(
              top: 23.h,
              left: 15.h,
              child: Container(
                width: 17.h,
                height: 4.h,
                color: appTheme.colorFFD9D9,
              ),
            ),
            Positioned(
              top: 25.h,
              left: 0,
              child: Container(
                width: 16.h,
                height: 2.h,
                color: appTheme.colorFFD9D9,
              ),
            ),
          ],

          // Main content
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal:
                  (rankingItemModel.hasAlternateBackground?.value ?? false)
                      ? 12.h
                      : 8.h,
              vertical: 8.h,
            ),
            child: Row(
              children: [
                // Rank and Medal
                SizedBox(
                  width: 40.h,
                  child: (rankingItemModel.hasMedal?.value ?? false)
                      ? CustomImageView(
                          imagePath: rankingItemModel.medalIcon?.value ?? '',
                          height: 26.h,
                          width: 26.h,
                        )
                      : Text(
                          rankingItemModel.rank?.value ?? '',
                          style: TextStyleHelper.instance.body12
                              .copyWith(height: 1.17),
                        ),
                ),

                SizedBox(width: 13.h),

                // Username
                Expanded(
                  flex: 2,
                  child: Text(
                    rankingItemModel.username?.value ?? '',
                    style: TextStyleHelper.instance.label11
                        .copyWith(color: appTheme.whiteCustom, height: 1.18),
                  ),
                ),

                // Invite Quantity
                Expanded(
                  child: Text(
                    rankingItemModel.inviteQuantity?.value ?? '',
                    style:
                        TextStyleHelper.instance.label11.copyWith(height: 1.18),
                    textAlign: TextAlign.center,
                  ),
                ),

                // Prize
                Expanded(
                  child: Text(
                    rankingItemModel.prize?.value ?? '',
                    style:
                        TextStyleHelper.instance.label11.copyWith(height: 1.18),
                    textAlign: TextAlign.end,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
