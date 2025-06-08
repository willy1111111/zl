import 'package:flutter/material.dart';

import '../../../core/app_export.dart';
import '../models/game_grid_item_model.dart';

class GameGridItemWidget extends StatelessWidget {
  final GameGridItemModel gameItem;
  final VoidCallback? onTap;

  GameGridItemWidget({
    Key? key,
    required this.gameItem,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: gameItem.gradientColors?.value ??
                [appTheme.greyCustom, appTheme.grey800],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
          borderRadius: BorderRadius.circular(8.h),
        ),
        padding: EdgeInsets.all(8.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            if (gameItem.badge?.value.isNotEmpty ?? false)
              Text(
                gameItem.badge?.value ?? '',
                style: TextStyleHelper.instance.label10Bold.copyWith(
                    color: gameItem.badgeColor?.value ?? Color(0xFFFFC107)),
              ),
            if (gameItem.subtitle?.value.isNotEmpty ?? false)
              Text(
                gameItem.subtitle?.value ?? '',
                style: TextStyleHelper.instance.label10Bold
                    .copyWith(color: appTheme.whiteCustom),
              ),
            Text(
              gameItem.title?.value ?? '',
              style: TextStyleHelper.instance.label10,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      ),
    );
  }
}
