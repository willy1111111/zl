import 'package:flutter/material.dart';

import '../../../core/app_export.dart';
import '../../../widgets/custom_image_view.dart';
import '../models/game_card_model.dart';

class GameCardWidget extends StatelessWidget {
  final GameCardModel gameModel;
  final VoidCallback? onTap;

  const GameCardWidget({
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
          Container(
            width: 88.h,
            height: 88.h,
            child: Stack(
              children: [
                if (gameModel.hasCustomBackground?.value ?? false)
                  Container(
                    width: 88.h,
                    height: 88.h,
                    decoration: BoxDecoration(
                      color: appTheme.colorFF3035,
                      borderRadius: BorderRadius.circular(4.h),
                    ),
                  ),
                CustomImageView(
                  imagePath: gameModel.gameImagePath?.value ?? '',
                  width: 88.h,
                  height: 88.h,
                  radius: BorderRadius.circular(4.h),
                  fit: BoxFit.cover,
                ),
                if (gameModel.overlayImagePath?.value.isNotEmpty ?? false)
                  CustomImageView(
                    imagePath: gameModel.overlayImagePath?.value ?? '',
                    width: 88.h,
                    height: 88.h,
                    radius: BorderRadius.circular(4.h),
                    fit: BoxFit.cover,
                  ),
                if (gameModel.overlayIconPath?.value.isNotEmpty ?? false)
                  Positioned(
                    top: 0,
                    left: 0,
                    child: CustomImageView(
                      imagePath: gameModel.overlayIconPath?.value ?? '',
                      width: 34.h,
                      height: 18.h,
                    ),
                  ),
                if (gameModel.hasNotificationBadge?.value ?? false)
                  Positioned(
                    top: 47.h,
                    right: 8.h,
                    child: Container(
                      width: 14.h,
                      height: 14.h,
                      decoration: BoxDecoration(
                        color: appTheme.colorFFF335,
                        borderRadius: BorderRadius.circular(7.h),
                      ),
                      child: Center(
                        child: Text(
                          '1',
                          style: TextStyleHelper.instance.body12Black
                              .copyWith(letterSpacing: 2.0),
                        ),
                      ),
                    ),
                  ),
              ],
            ),
          ),
          if (gameModel.gameTitle?.value.isNotEmpty ?? false)
            Padding(
              padding: EdgeInsets.only(top: 8.h),
              child: Text(
                gameModel.gameTitle?.value ?? '',
                style: TextStyleHelper.instance.body13Bold,
                textAlign: TextAlign.center,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ),
        ],
      ),
    );
  }
}
