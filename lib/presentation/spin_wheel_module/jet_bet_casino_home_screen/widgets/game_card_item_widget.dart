import 'package:flutter/material.dart';

import '../../../core/app_export.dart';
import '../../../widgets/custom_image_view.dart';
import '../models/game_card_item_model.dart';

class GameCardItemWidget extends StatelessWidget {
  final GameCardItemModel gameItem;
  final VoidCallback? onTap;

  GameCardItemWidget({
    Key? key,
    required this.gameItem,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Stack(
            children: [
              CustomImageView(
                imagePath: gameItem.gameImagePath?.value ?? '',
                height: 88.h,
                width: 88.h,
                fit: BoxFit.cover,
                radius: BorderRadius.circular(4.h),
              ),
              if (gameItem.overlayImagePath?.value.isNotEmpty ?? false)
                Positioned.fill(
                  child: CustomImageView(
                    imagePath: gameItem.overlayImagePath?.value ?? '',
                    height: 88.h,
                    width: 88.h,
                    fit: BoxFit.cover,
                    radius: BorderRadius.circular(4.h),
                  ),
                ),
              Positioned(
                top: 0,
                left: 0,
                child: CustomImageView(
                  imagePath: gameItem.badgeImagePath?.value ??
                      ImageConstant.imgGroup1019,
                  height: 18.h,
                  width: 34.h,
                ),
              ),
            ],
          ),
          SizedBox(height: 8.h),
          Text(
            gameItem.gameTitle?.value ?? '',
            textAlign: TextAlign.center,
            style: TextStyleHelper.instance.body13Bold.copyWith(shadows: [
              Shadow(
                color: appTheme.blackCustom,
                blurRadius: 2.h,
                offset: Offset(0, 1.h),
              ),
            ]),
          ),
        ],
      ),
    );
  }
}
