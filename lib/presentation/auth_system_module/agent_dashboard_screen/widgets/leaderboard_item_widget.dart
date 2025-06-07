import 'package:flutter/material.dart';
import '../../../../core/app_export.dart';
import '../models/leaderboard_item_model.dart';

class LeaderboardItemWidget extends StatelessWidget {
  final LeaderboardItemModel leaderboardItemModel;

  LeaderboardItemWidget({
    Key? key,
    required this.leaderboardItemModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8.h),
      decoration: BoxDecoration(
        color: appTheme.whiteCustom,
        borderRadius: BorderRadius.circular(17.h),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            leaderboardItemModel.userNumber?.value ?? '',
            style: TextStyleHelper.instance.label11,
          ),
          Text(
            leaderboardItemModel.action?.value ?? '',
            style: TextStyleHelper.instance.label11,
            textAlign: TextAlign.center,
          ),
          Text(
            leaderboardItemModel.amount?.value ?? '',
            style: TextStyleHelper.instance.label11,
          ),
        ],
      ),
    );
  }
}
