import 'package:flutter/material.dart';

import '../../../core/app_export.dart';
import '../models/winner_item_model.dart';

class WinnerItemWidget extends StatelessWidget {
  final WinnerItemModel winnerItem;

  const WinnerItemWidget({
    Key? key,
    required this.winnerItem,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8.h),
      decoration: BoxDecoration(
        border: Border.all(color: appTheme.whiteCustom),
        borderRadius: BorderRadius.circular(4.h),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            winnerItem.username?.value ?? '',
            style: TextStyleHelper.instance.body12SemiBoldSFProText,
          ),
          Text(
            winnerItem.status?.value ?? '',
            style: TextStyleHelper.instance.body12Arial,
          ),
          Text(
            winnerItem.amount?.value ?? '',
            style: TextStyleHelper.instance.body12BoldSFProText,
          ),
        ],
      ),
    );
  }
}
