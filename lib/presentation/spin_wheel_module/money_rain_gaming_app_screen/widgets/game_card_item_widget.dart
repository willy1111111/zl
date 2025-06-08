import 'package:flutter/material.dart';

import '../../../core/app_export.dart';
import '../../../widgets/custom_image_view.dart';
import '../models/game_card_item_model.dart';

class GameCardItemWidget extends StatelessWidget {
  final GameCardItemModel gameModel;
  final VoidCallback? onTap;

  const GameCardItemWidget({
    Key? key,
    required this.gameModel,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 88.h,
            height: 88.h,
            child: Stack(
              children: [
                CustomImageView(
                  imagePath: gameModel.gameImagePath?.value ?? '',
                  width: 88.h,
                  height: 88.h,
                  fit: BoxFit.cover,
                ),
                if (gameModel.overlayImagePath?.value.isNotEmpty ?? false)
                  Positioned(
                    top: 0,
                    left: 0,
                    child: CustomImageView(
                      imagePath: gameModel.overlayImagePath?.value ?? '',
                      width: 88.h,
                      height: 88.h,
                      fit: BoxFit.cover,
                    ),
                  ),
                Positioned(
                  top: 0,
                  left: 0,
                  child: Container(
                    width: 34.h,
                    height: 18.h,
                    decoration: BoxDecoration(
                      color: appTheme.colorFF4147,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(4.h),
                        bottomRight: Radius.circular(8.h),
                      ),
                    ),
                  ),
                ),
                if (gameModel.hasNotificationBadge?.value ?? false)
                  Positioned(
                    top: 47.h,
                    right: 7.h,
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
                  ),
              ],
            ),
          ),
          SizedBox(height: 4.h),
          Text(
            gameModel.gameTitle?.value ?? '',
            style: TextStyleHelper.instance.body12Bold
                .copyWith(color: appTheme.colorFF8089),
            textAlign: TextAlign.center,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}
