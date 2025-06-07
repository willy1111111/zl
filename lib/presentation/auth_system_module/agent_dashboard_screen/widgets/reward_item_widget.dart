import 'package:flutter/material.dart';
import '../../../../widgets/custom_image_view.dart';
import '../../../../core/app_export.dart';
import '../models/reward_item_model.dart';

class RewardItemWidget extends StatelessWidget {
  final RewardItemModel rewardItemModel;

  RewardItemWidget({
    Key? key,
    required this.rewardItemModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.h),
      decoration: BoxDecoration(
        color: appTheme.blackCustom,
        borderRadius: BorderRadius.circular(8.h),
      ),
      child: Row(
        children: [
          SizedBox(
            height: 70.h,
            width: 70.h,
            child: Stack(
              children: [
                CustomImageView(
                  imagePath: rewardItemModel.icon?.value ?? '',
                  height: 70.h,
                  width: 70.h,
                  fit: BoxFit.cover,
                ),
                if (rewardItemModel.overlayIcon?.value.isNotEmpty ?? false)
                  Positioned.fill(
                    child: Center(
                      child: CustomImageView(
                        imagePath: rewardItemModel.overlayIcon?.value ?? '',
                        height: 38.h,
                        width: 37.h,
                      ),
                    ),
                  ),
              ],
            ),
          ),
          SizedBox(width: 16.h),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  rewardItemModel.title?.value ?? '',
                  style: TextStyleHelper.instance.body14Bold
                      .copyWith(color: appTheme.whiteCustom),
                ),
                SizedBox(height: 4.h),
                Text(
                  rewardItemModel.amount?.value ?? '',
                  style: TextStyleHelper.instance.title18Black,
                ),
                SizedBox(height: 4.h),
                Text(
                  rewardItemModel.claimed?.value ?? '',
                  style: TextStyleHelper.instance.body12Bold,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
