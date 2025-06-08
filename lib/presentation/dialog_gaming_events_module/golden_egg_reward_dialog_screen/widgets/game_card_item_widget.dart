import 'package:flutter/material.dart';

import '../../../core/app_export.dart';
import '../../../widgets/custom_image_view.dart';
import '../models/game_card_item_model.dart';

class GameCardItemWidget extends StatelessWidget {
  final GameCardItemModel gameCard;
  final VoidCallback? onTap;

  GameCardItemWidget({
    Key? key,
    required this.gameCard,
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
            child: Stack(
              children: [
                _buildMainImage(),
                _buildOverlayImage(),
                _buildBackgroundOverlay(),
                _buildSpecialOverlay(),
                _buildNotificationDot(),
                _buildSpecialLine(),
              ],
            ),
          ),
          SizedBox(height: 2.h),
          _buildTitle(),
        ],
      ),
    );
  }

  Widget _buildMainImage() {
    return Obx(() {
      if (gameCard.isLogoCard?.value ?? false) {
        return Container(
          width: 88.h,
          height: 88.h,
          decoration: BoxDecoration(
            color: appTheme.colorFF3035,
            borderRadius: BorderRadius.circular(4.h),
          ),
          child: Center(
            child: CustomImageView(
              imagePath: gameCard.gameImagePath?.value ?? '',
              height: 20.h,
              width: 56.h,
              fit: BoxFit.contain,
            ),
          ),
        );
      }

      return CustomImageView(
        imagePath: gameCard.gameImagePath?.value ?? '',
        height: 88.h,
        width: 88.h,
        fit: BoxFit.cover,
        radius: BorderRadius.circular(4.h),
      );
    });
  }

  Widget _buildOverlayImage() {
    return Obx(() {
      if (gameCard.overlayImagePath?.value.isNotEmpty ?? false) {
        return Positioned(
          top: 0,
          left: 0,
          child: CustomImageView(
            imagePath: gameCard.overlayImagePath?.value ?? '',
            height: gameCard.overlayHeight?.value.toDouble() ?? 34.h,
            width: gameCard.overlayWidth?.value.toDouble() ?? 18.h,
          ),
        );
      }
      return SizedBox.shrink();
    });
  }

  Widget _buildBackgroundOverlay() {
    return Obx(() {
      if (gameCard.backgroundOverlayPath?.value.isNotEmpty ?? false) {
        return Positioned(
          top: 0,
          left: 0,
          child: CustomImageView(
            imagePath: gameCard.backgroundOverlayPath?.value ?? '',
            height: 88.h,
            width: 88.h,
            fit: BoxFit.cover,
            radius: BorderRadius.circular(4.h),
          ),
        );
      }
      return SizedBox.shrink();
    });
  }

  Widget _buildSpecialOverlay() {
    return Obx(() {
      if (gameCard.specialOverlayPath?.value.isNotEmpty ?? false) {
        return Positioned(
          top: 0,
          left: 0,
          child: CustomImageView(
            imagePath: gameCard.specialOverlayPath?.value ?? '',
            height: 88.h,
            width: 88.h,
          ),
        );
      }
      return SizedBox.shrink();
    });
  }

  Widget _buildNotificationDot() {
    return Obx(() {
      if (gameCard.showNotificationDot?.value ?? false) {
        return Positioned(
          top: gameCard.notificationTop?.value.toDouble() ?? 18.h,
          right: gameCard.notificationRight?.value.toDouble() ?? 27.h,
          child: Container(
            width: 14.h,
            height: 14.h,
            decoration: BoxDecoration(
              color: appTheme.colorFFF335,
              shape: BoxShape.circle,
            ),
            child: gameCard.notificationNumber?.value.isNotEmpty ?? false
                ? Center(
                    child: Text(
                      gameCard.notificationNumber?.value ?? '',
                      style: TextStyleHelper.instance.body12BlackArial
                          .copyWith(letterSpacing: 2),
                    ),
                  )
                : null,
          ),
        );
      }
      return SizedBox.shrink();
    });
  }

  Widget _buildSpecialLine() {
    return Obx(() {
      if (gameCard.hasSpecialLine?.value ?? false) {
        return Positioned(
          top: -1.h,
          right: 41.h,
          child: Container(
            width: 1.h,
            height: 50.h,
            decoration: BoxDecoration(
              color: appTheme.colorFF2548,
              boxShadow: [
                BoxShadow(
                  color: appTheme.colorFF8888,
                  offset: Offset(0, 4),
                  blurRadius: 0,
                ),
              ],
            ),
          ),
        );
      }
      return SizedBox.shrink();
    });
  }

  Widget _buildTitle() {
    return Obx(() => Container(
          width: 88.h,
          child: Text(
            gameCard.title?.value ?? '',
            style: TextStyleHelper.instance.body13BoldNotoSans,
            textAlign: TextAlign.center,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ));
  }
}
