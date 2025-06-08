import 'package:flutter/material.dart';

import '../../../core/app_export.dart';
import '../../../widgets/custom_image_view.dart';
import '../models/game_item_model.dart';

class GameItemWidget extends StatelessWidget {
  final GameItemModel gameItemModel;
  final VoidCallback? onTap;

  const GameItemWidget({
    Key? key,
    required this.gameItemModel,
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
                // Main game image or custom background
                if (gameItemModel.isCustomBackground?.value ?? false)
                  Container(
                    width: 88.h,
                    height: 88.h,
                    decoration: BoxDecoration(
                      color: appTheme.colorFF3035,
                      borderRadius: BorderRadius.circular(4.h),
                    ),
                    child: Center(
                      child: CustomImageView(
                        imagePath: gameItemModel.gameImage?.value ?? '',
                        height: 20.h,
                        width: 56.h,
                        radius: BorderRadius.circular(4.h),
                      ),
                    ),
                  )
                else
                  CustomImageView(
                    imagePath: gameItemModel.gameImage?.value ?? '',
                    height: 88.h,
                    width: 88.h,
                    radius: BorderRadius.circular(4.h),
                  ),

                // Overlay image (for baccarat games)
                if (gameItemModel.overlayImage?.value != null)
                  CustomImageView(
                    imagePath: gameItemModel.overlayImage?.value ?? '',
                    height: 88.h,
                    width: 88.h,
                    radius: BorderRadius.circular(4.h),
                  ),

                // Overlay icon
                if (gameItemModel.overlayIcon?.value != null)
                  Positioned(
                    top: 0,
                    left: 0,
                    child: gameItemModel.overlayIcon?.value ==
                            ImageConstant.imgGroup1019
                        ? CustomImageView(
                            imagePath: gameItemModel.overlayIcon?.value ?? '',
                            height: 18.h,
                            width: 34.h,
                          )
                        : Container(
                            width: 34.h,
                            height: 18.h,
                            decoration: BoxDecoration(
                              color: appTheme.colorFF4147,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(2.h),
                                bottomLeft: Radius.circular(6.h),
                              ),
                              boxShadow: [
                                BoxShadow(
                                  color: appTheme.blackCustom.withAlpha(128),
                                  offset: Offset(0, 1.h),
                                  blurRadius: 2.h,
                                ),
                              ],
                            ),
                          ),
                  ),

                // Custom overlay for Money Coming game
                if (gameItemModel.isCustomBackground?.value ?? false)
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
                          bottomLeft: Radius.circular(6.h),
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: appTheme.blackCustom.withAlpha(128),
                            offset: Offset(0, 2.h),
                            blurRadius: 2.h,
                          ),
                        ],
                      ),
                    ),
                  ),
              ],
            ),
          ),

          SizedBox(height: 6.h),

          // Game title
          Text(
            gameItemModel.title?.value ?? '',
            style: TextStyleHelper.instance.body13Bold.copyWith(shadows: [
              Shadow(
                color: appTheme.blackCustom,
                offset: Offset(0, 1.h),
                blurRadius: 2.h,
              ),
            ]),
            textAlign: TextAlign.center,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}
