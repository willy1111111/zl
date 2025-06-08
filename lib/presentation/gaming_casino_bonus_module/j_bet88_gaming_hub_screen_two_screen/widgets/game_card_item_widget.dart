import 'package:flutter/material.dart';

import '../../../core/app_export.dart';
import '../../../widgets/custom_image_view.dart';
import '../models/game_card_item_model.dart';

class GameCardItemWidget extends StatelessWidget {
  final GameCardItemModel gameCardItem;
  final VoidCallback? onTap;

  const GameCardItemWidget({
    Key? key,
    required this.gameCardItem,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Container(
            width: 88.h,
            height: 88.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4.h),
              color: (gameCardItem.hasCustomBackground?.value ?? false)
                  ? Color(0xFF30353A)
                  : appTheme.transparentCustom,
            ),
            child: Stack(
              children: [
                // Base game image
                if (gameCardItem.hasCustomBackground?.value ?? false)
                  Center(
                    child: CustomImageView(
                      imagePath: gameCardItem.gameImage?.value ?? '',
                      height: 20.h,
                      width: 56.h,
                      radius: BorderRadius.circular(4.h),
                    ),
                  )
                else
                  CustomImageView(
                    imagePath: gameCardItem.gameImage?.value ?? '',
                    height: 88.h,
                    width: 88.h,
                    radius: BorderRadius.circular(4.h),
                    fit: BoxFit.cover,
                  ),

                // Overlay image (if exists)
                if (gameCardItem.overlayImage?.value != null)
                  CustomImageView(
                    imagePath: gameCardItem.overlayImage?.value ?? '',
                    height: 88.h,
                    width: 88.h,
                    radius: BorderRadius.circular(4.h),
                    fit: BoxFit.cover,
                  ),

                // Overlay icon (if exists)
                if (gameCardItem.overlayIcon?.value != null)
                  Positioned(
                    top: 0,
                    left: 0,
                    child: CustomImageView(
                      imagePath: gameCardItem.overlayIcon?.value ?? '',
                      height: 18.h,
                      width: 34.h,
                    ),
                  ),

                // Custom overlay for some cards
                if (gameCardItem.hasOverlay?.value ??
                    false && gameCardItem.overlayIcon?.value == null)
                  Positioned(
                    top: 0,
                    left: 0,
                    child: Container(
                      width: 34.h,
                      height: 18.h,
                      decoration: BoxDecoration(
                        color: appTheme.colorFF4147,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(2.h),
                          bottomRight: Radius.circular(6.h),
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: appTheme.blackCustom,
                            offset: Offset(0, 1.h),
                            blurRadius: 2.h,
                          ),
                        ],
                      ),
                    ),
                  ),

                // Notification badge (if exists)
                if (gameCardItem.hasNotification?.value ?? false)
                  Positioned(
                    top: 47.h,
                    right: 11.h,
                    child: Container(
                      width: 14.h,
                      height: 14.h,
                      decoration: BoxDecoration(
                        color: appTheme.colorFFF335,
                        shape: BoxShape.circle,
                      ),
                      child: Center(
                        child: Text(
                          '1',
                          style: TextStyleHelper.instance.body12Black
                              .copyWith(letterSpacing: 2.h),
                        ),
                      ),
                    ),
                  ),
              ],
            ),
          ),
          SizedBox(height: 10.h),
          Text(
            gameCardItem.gameTitle?.value ?? '',
            style: TextStyleHelper.instance.body13Bold,
            textAlign: TextAlign.center,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}
