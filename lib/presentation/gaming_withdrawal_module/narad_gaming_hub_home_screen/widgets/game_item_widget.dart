import 'package:flutter/material.dart';

import '../../../core/app_export.dart';
import '../../../widgets/custom_image_view.dart';
import '../models/game_item_model.dart';

class GameItemWidget extends StatelessWidget {
  final GameItemModel gameItem;
  final VoidCallback? onTap;

  const GameItemWidget({
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
          Container(
            height: 88.h,
            width: 88.h,
            decoration: BoxDecoration(
              color: (gameItem.isCustomBackground?.value ?? false)
                  ? Color(0xFF30353a)
                  : null,
              borderRadius: BorderRadius.circular(4.h),
            ),
            child: Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(4.h),
                  child: CustomImageView(
                    imagePath: gameItem.gameImage?.value ?? '',
                    height: 88.h,
                    width: 88.h,
                    fit: BoxFit.cover,
                  ),
                ),
                if (gameItem.hasBackgroundOverlay?.value ?? false)
                  Positioned.fill(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(4.h),
                      child: CustomImageView(
                        imagePath: gameItem.backgroundOverlay?.value ??
                            ImageConstant.img1baccarat1,
                        height: 88.h,
                        width: 88.h,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                if (gameItem.hasOverlay?.value ?? false)
                  Positioned(
                    top: 0,
                    left: 0,
                    child: CustomImageView(
                      imagePath: gameItem.overlayIcon?.value ?? '',
                      height: 18.h,
                      width: 34.h,
                    ),
                  ),
                if (!(gameItem.hasOverlay?.value ?? false) &&
                    !(gameItem.hasBackgroundOverlay?.value ?? false))
                  Positioned(
                    top: 0,
                    left: 0,
                    child: Container(
                      height: 18.h,
                      width: 34.h,
                      decoration: BoxDecoration(
                        color: appTheme.colorFF4147,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(2.h),
                          bottomRight: Radius.circular(6.h),
                        ),
                      ),
                    ),
                  ),
              ],
            ),
          ),
          SizedBox(height: 4.h),
          SizedBox(
            width: 88.h,
            child: Text(
              gameItem.title?.value ?? '',
              style: TextStyleHelper.instance.body13Bold.copyWith(shadows: [
                Shadow(
                  offset: Offset(0, 1),
                  blurRadius: 2,
                  color: appTheme.blackCustom,
                ),
              ]),
              textAlign: TextAlign.center,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }
}
