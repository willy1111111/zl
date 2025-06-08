import 'package:flutter/material.dart';

import '../../../core/app_export.dart';
import '../../../widgets/custom_image_view.dart';
import '../models/game_item_model.dart';

class GameItemWidget extends StatelessWidget {
  final GameItemModel gameModel;
  final VoidCallback? onTap;

  const GameItemWidget({
    Key? key,
    required this.gameModel,
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
              // Main game image or special background
              Obx(() {
                if (gameModel.isSpecial?.value ?? false) {
                  return Container(
                    width: 88.h,
                    height: 88.h,
                    decoration: BoxDecoration(
                      color: appTheme.colorFF3035,
                      borderRadius: BorderRadius.circular(4.h),
                    ),
                    child: Center(
                      child: CustomImageView(
                        imagePath: gameModel.gameImagePath?.value ?? '',
                        width: 56.h,
                        height: 20.h,
                      ),
                    ),
                  );
                } else {
                  return CustomImageView(
                    imagePath: gameModel.gameImagePath?.value ?? '',
                    width: 88.h,
                    height: 88.h,
                    fit: BoxFit.cover,
                  );
                }
              }),

              // Overlay image if present
              Obx(() {
                if (gameModel.overlayImagePath?.value.isNotEmpty ?? false) {
                  return Positioned.fill(
                    child: CustomImageView(
                      imagePath: gameModel.overlayImagePath?.value ?? '',
                      width: 88.h,
                      height: 88.h,
                      fit: BoxFit.cover,
                    ),
                  );
                }
                return SizedBox.shrink();
              }),

              // Badge image
              Obx(() {
                if (gameModel.badgeImagePath?.value.isNotEmpty ?? false) {
                  return Positioned(
                    top: 0,
                    left: 0,
                    child: CustomImageView(
                      imagePath: gameModel.badgeImagePath?.value ?? '',
                      width: 34.h,
                      height: 18.h,
                    ),
                  );
                } else if (!(gameModel.isSpecial?.value ?? false) &&
                    (gameModel.overlayImagePath?.value.isEmpty ?? true)) {
                  return Positioned(
                    top: 0,
                    left: 0,
                    child: Container(
                      width: 34.h,
                      height: 18.h,
                      decoration: BoxDecoration(
                        color: appTheme.colorFF4147,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(2.h),
                          bottomLeft: Radius.circular(8.h),
                        ),
                      ),
                    ),
                  );
                }
                return SizedBox.shrink();
              }),

              // Notification badge
              Obx(() {
                if (gameModel.hasNotification?.value ?? false) {
                  return Positioned(
                    top: 8.h,
                    right: 8.h,
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
                          style: TextStyleHelper.instance.label10Black,
                        ),
                      ),
                    ),
                  );
                }
                return SizedBox.shrink();
              }),
            ],
          ),
          SizedBox(height: 4.h),
          Obx(() {
            if (gameModel.gameTitle?.value.isNotEmpty ?? false) {
              return Text(
                gameModel.gameTitle?.value ?? '',
                style: TextStyleHelper.instance.body12Bold
                    .copyWith(color: appTheme.colorFF8089),
                textAlign: TextAlign.center,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              );
            }
            return SizedBox.shrink();
          }),
        ],
      ),
    );
  }
}
