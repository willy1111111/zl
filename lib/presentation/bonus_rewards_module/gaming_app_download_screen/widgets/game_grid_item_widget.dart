import 'package:flutter/material.dart';

import '../../../../../core/app_export.dart';
import '../../../../../widgets/custom_image_view.dart';
import '../models/game_item_model.dart';

class GameGridItemWidget extends StatelessWidget {
  final GameItemModel gameItem;
  final VoidCallback? onTap;

  const GameGridItemWidget({
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
              Obx(() => gameItem.isSpecial?.value ?? false
                  ? Container(
                      width: 88.h,
                      height: 88.h,
                      decoration: BoxDecoration(
                        color: appTheme.colorFF3035,
                        borderRadius: BorderRadius.circular(4.h),
                      ),
                      child: Center(
                        child: CustomImageView(
                          imagePath: gameItem.imagePath?.value ?? '',
                          height: 20.h,
                          width: 56.h,
                          fit: BoxFit.contain,
                        ),
                      ),
                    )
                  : CustomImageView(
                      imagePath: gameItem.imagePath?.value ?? '',
                      width: 88.h,
                      height: 88.h,
                      fit: BoxFit.cover,
                    )),
              Obx(() => gameItem.overlayImagePath?.value != null
                  ? Positioned.fill(
                      child: CustomImageView(
                        imagePath: gameItem.overlayImagePath?.value ?? '',
                        width: 88.h,
                        height: 88.h,
                        fit: BoxFit.cover,
                      ),
                    )
                  : SizedBox.shrink()),
              Obx(() => gameItem.hasPlayButton?.value ?? false
                  ? Positioned(
                      top: 0,
                      left: 0,
                      child: gameItem.playButtonImagePath?.value != null
                          ? CustomImageView(
                              imagePath:
                                  gameItem.playButtonImagePath?.value ?? '',
                              height: 34.h,
                              width: 18.h,
                            )
                          : Container(
                              height: 34.h,
                              width: 18.h,
                              decoration: BoxDecoration(
                                color: appTheme.colorFF4147,
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(2.h),
                                  bottomLeft: Radius.circular(6.h),
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    color: appTheme.blackCustom,
                                    offset: Offset(0, 1),
                                    blurRadius: 2,
                                  ),
                                ],
                              ),
                            ),
                    )
                  : SizedBox.shrink()),
              Obx(() => gameItem.isSpecial?.value ?? false
                  ? Positioned(
                      top: 0,
                      left: 0,
                      child: Container(
                        height: 34.h,
                        width: 18.h,
                        decoration: BoxDecoration(
                          color: appTheme.colorFF4147,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(4.h),
                            bottomLeft: Radius.circular(6.h),
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: appTheme.blackCustom,
                              offset: Offset(0, 2),
                              blurRadius: 2,
                            ),
                          ],
                        ),
                      ),
                    )
                  : SizedBox.shrink()),
            ],
          ),
          SizedBox(height: 4.h),
          Obx(() => Text(
                gameItem.title?.value ?? '',
                style: TextStyleHelper.instance.body13Bold,
                textAlign: TextAlign.center,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              )),
        ],
      ),
    );
  }
}
