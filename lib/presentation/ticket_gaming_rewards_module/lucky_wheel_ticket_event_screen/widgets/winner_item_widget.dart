import 'package:flutter/material.dart';

import '../../../core/app_export.dart';
import '../../../widgets/custom_image_view.dart';
import '../models/winner_item_model.dart';

class WinnerItemWidget extends StatelessWidget {
  final WinnerItemModel winner;

  WinnerItemWidget({
    Key? key,
    required this.winner,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 8.h),
      padding: EdgeInsets.all(1.h),
      decoration: BoxDecoration(
        border: Border.all(color: appTheme.whiteCustom),
        borderRadius: BorderRadius.circular(9.h),
      ),
      child: Row(
        children: [
          CustomImageView(
            imagePath: winner.avatarPath?.value ?? '',
            height: 20.h,
            width: 20.h,
            radius: BorderRadius.circular(10.h),
          ),
          SizedBox(width: 8.h),
          Text(
            winner.username?.value ?? '',
            style: TextStyleHelper.instance.body12Black,
          ),
          SizedBox(width: 8.h),
          Text(
            'received a bonus of',
            style: TextStyleHelper.instance.body12Black
                .copyWith(color: appTheme.colorFF8089),
          ),
          SizedBox(width: 8.h),
          Text(
            winner.bonusAmount?.value ?? '',
            style: TextStyleHelper.instance.body12Bold
                .copyWith(color: appTheme.colorFFFFC6),
          ),
        ],
      ),
    );
  }
}
