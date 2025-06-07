import 'package:flutter/material.dart';

import '../../../../core/app_export.dart';
import '../models/bonus_card_model.dart';

class BonusCardWidget extends StatelessWidget {
  final BonusCardModel bonusItem;

  BonusCardWidget({
    Key? key,
    required this.bonusItem,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(() => Container(
          width: bonusItem.width?.value.toDouble() ?? 75.h,
          height: 34.h,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color(0xFFF9E28A),
                appTheme.colorFFFEF3,
                appTheme.colorFFB782,
              ],
            ),
            borderRadius: BorderRadius.circular(4.h),
          ),
          padding: EdgeInsets.symmetric(horizontal: 12.h, vertical: 4.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                bonusItem.title?.value ?? '',
                style:
                    TextStyleHelper.instance.label8Bold.copyWith(height: 1.38),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              Text(
                bonusItem.amount?.value ?? '',
                style: TextStyleHelper.instance.body13Bold
                    .copyWith(color: appTheme.colorFFC500, height: 1.23),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
        ));
  }
}
