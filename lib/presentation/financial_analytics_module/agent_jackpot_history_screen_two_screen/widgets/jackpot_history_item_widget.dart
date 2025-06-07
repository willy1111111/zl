import 'package:flutter/material.dart';

import '../../../core/app_export.dart';
import '../../../widgets/custom_image_view.dart';
import '../models/jackpot_history_item_model.dart';

class JackpotHistoryItemWidget extends StatelessWidget {
  final JackpotHistoryItemModel historyItem;
  final int index;

  JackpotHistoryItemWidget({
    Key? key,
    required this.historyItem,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 345.h,
      height: 40.h,
      margin: EdgeInsets.only(top: index > 0 ? 7.h : 0),
      decoration: BoxDecoration(
        color: (historyItem.hasAlternateBackground?.value ?? false)
            ? Color(0xFF1E2024)
            : appTheme.transparentCustom,
      ),
      child: Stack(
        children: [
          // Medal or Rank Number
          if (historyItem.hasMedal?.value ?? false)
            Positioned(
              top: 7.h,
              left: 12.h,
              child: CustomImageView(
                imagePath: historyItem.medalImagePath?.value ?? '',
                width: 26.h,
                height: 26.h,
              ),
            )
          else
            Positioned(
              top: 12.h,
              left: 15.h,
              child: Text(
                historyItem.rank?.value ?? '',
                style: TextStyleHelper.instance.body12Arial,
              ),
            ),

          // User
          Positioned(
            top: 12.h,
            left: 51.h,
            child: Text(
              historyItem.user?.value ?? '',
              style: TextStyleHelper.instance.label11Arial
                  .copyWith(color: appTheme.whiteCustom),
            ),
          ),

          // Direct Invite Quantity
          Positioned(
            top: 12.h,
            left: 165.h,
            child: Text(
              historyItem.directInviteQuantity?.value ?? '',
              style: TextStyleHelper.instance.label11Arial,
            ),
          ),

          // Prize
          Positioned(
            top: 12.h,
            left: historyItem.prize?.value == '---------' ? 300.h : 285.h,
            child: Text(
              historyItem.prize?.value ?? '',
              style: TextStyleHelper.instance.label11Arial,
            ),
          ),
        ],
      ),
    );
  }
}
