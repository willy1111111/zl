import 'package:flutter/material.dart';

import '../../../core/app_export.dart';
import '../../../widgets/custom_image_view.dart';
import '../models/winner_item_model.dart';

class WinnerItemWidget extends StatelessWidget {
  final WinnerItemModel winnerItemModel;

  WinnerItemWidget({
    Key? key,
    required this.winnerItemModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 28.h,
      padding: EdgeInsets.symmetric(horizontal: 8.h),
      decoration: BoxDecoration(
        border: Border.all(color: appTheme.whiteCustom, width: 1.h),
        borderRadius: BorderRadius.circular(9.h),
      ),
      child: Row(
        children: [
          CustomImageView(
            imagePath: winnerItemModel.avatarPath?.value ?? '',
            height: 20.h,
            width: 20.h,
            radius: BorderRadius.circular(10.h),
          ),
          SizedBox(width: 8.h),
          Text(
            winnerItemModel.username?.value ?? '',
            style: TextStyleHelper.instance.body12Bold
                .copyWith(color: appTheme.whiteCustom),
          ),
          SizedBox(width: 8.h),
          Text(
            'received a bonus of',
            style: TextStyleHelper.instance.body12Bold
                .copyWith(color: appTheme.colorFF8089),
          ),
          SizedBox(width: 8.h),
          Expanded(
            child: Text(
              winnerItemModel.bonusAmount?.value ?? '',
              style: TextStyleHelper.instance.body12Bold
                  .copyWith(color: appTheme.colorFFFFC6),
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }
}
