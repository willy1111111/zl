import 'package:flutter/material.dart';

import '../../../core/app_export.dart';
import '../../../widgets/custom_image_view.dart';
import '../models/game_card_item_model.dart';

class GameCardItem extends StatelessWidget {
  final GameCardItemModel gameCardModel;
  final VoidCallback? onTap;

  GameCardItem({
    Key? key,
    required this.gameCardModel,
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
                Obx(() {
                  if (gameCardModel.gameImagePath?.value ==
                      ImageConstant.imgLogowj931) {
                    return Container(
                      width: 88.h,
                      height: 88.h,
                      decoration: BoxDecoration(
                        color: appTheme.colorFF3035,
                        borderRadius: BorderRadius.circular(4.h),
                      ),
                      child: Center(
                        child: CustomImageView(
                          imagePath: gameCardModel.gameImagePath?.value ?? '',
                          height: 20.h,
                          width: 56.h,
                          fit: BoxFit.contain,
                        ),
                      ),
                    );
                  } else {
                    return CustomImageView(
                      imagePath: gameCardModel.gameImagePath?.value ?? '',
                      height: 88.h,
                      width: 88.h,
                      fit: BoxFit.cover,
                      radius: BorderRadius.circular(4.h),
                    );
                  }
                }),
                Obx(() {
                  if (gameCardModel.gameImagePath?.value ==
                      ImageConstant.img102x1000) {
                    return CustomImageView(
                      imagePath: ImageConstant.img1baccarat1,
                      height: 88.h,
                      width: 88.h,
                      fit: BoxFit.cover,
                      radius: BorderRadius.circular(4.h),
                    );
                  }
                  return SizedBox.shrink();
                }),
                Obx(() {
                  if (gameCardModel.gameImagePath?.value ==
                      ImageConstant.img211000) {
                    return CustomImageView(
                      imagePath: ImageConstant.imgBaccarat2,
                      height: 88.h,
                      width: 88.h,
                      fit: BoxFit.cover,
                      radius: BorderRadius.circular(4.h),
                    );
                  }
                  return SizedBox.shrink();
                }),
                Obx(() {
                  if (gameCardModel.gameImagePath?.value ==
                      ImageConstant.img911000) {
                    return CustomImageView(
                      imagePath: ImageConstant.imgBaccarat1,
                      height: 88.h,
                      width: 88.h,
                      fit: BoxFit.cover,
                      radius: BorderRadius.circular(4.h),
                    );
                  }
                  return SizedBox.shrink();
                }),
                Obx(() {
                  if (gameCardModel.overlayImagePath?.value != null) {
                    return Positioned(
                      top: 0,
                      left: 0,
                      child: CustomImageView(
                        imagePath: gameCardModel.overlayImagePath?.value ?? '',
                        height: gameCardModel.overlayHeight?.value ?? 18.h,
                        width: gameCardModel.overlayWidth?.value ?? 34.h,
                        fit: BoxFit.contain,
                      ),
                    );
                  }
                  return SizedBox.shrink();
                }),
                Obx(() {
                  if (gameCardModel.gameImagePath?.value ==
                      ImageConstant.img491000) {
                    return Positioned(
                      top: 0,
                      left: 0,
                      child: CustomImageView(
                        imagePath: ImageConstant.imgGroup120461,
                        height: 88.h,
                        width: 88.h,
                        fit: BoxFit.cover,
                      ),
                    );
                  }
                  return SizedBox.shrink();
                }),
                Obx(() {
                  if (gameCardModel.showNotificationDot?.value ?? false) {
                    return Positioned(
                      top: 18.h,
                      right: 27.h,
                      child: Container(
                        width: 14.h,
                        height: 14.h,
                        decoration: BoxDecoration(
                          color: appTheme.colorFFF335,
                          borderRadius: BorderRadius.circular(7.h),
                        ),
                        child: gameCardModel.gameImagePath?.value ==
                                ImageConstant.img911000
                            ? Center(
                                child: Text(
                                  '1',
                                  style: TextStyleHelper
                                      .instance.body12BlackArial
                                      .copyWith(letterSpacing: 2),
                                ),
                              )
                            : null,
                      ),
                    );
                  }
                  return SizedBox.shrink();
                }),
                Obx(() {
                  if (gameCardModel.gameImagePath?.value ==
                      ImageConstant.img911000) {
                    return Positioned(
                      top: 65.h,
                      right: 37.h,
                      child: CustomImageView(
                        imagePath: ImageConstant.imgGroup11853,
                        height: 50.h,
                        width: 50.h,
                        fit: BoxFit.contain,
                      ),
                    );
                  }
                  return SizedBox.shrink();
                }),
                Obx(() {
                  if (gameCardModel.gameImagePath?.value ==
                      ImageConstant.imgJdbslot092) {
                    return Positioned(
                      bottom: 11.h,
                      right: 38.h,
                      child: Stack(
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgGroup827,
                            height: 50.h,
                            width: 50.h,
                            fit: BoxFit.contain,
                          ),
                          Positioned(
                            bottom: 2.h,
                            right: 8.h,
                            child: Text(
                              '99',
                              style: TextStyleHelper.instance.body12Inter,
                            ),
                          ),
                        ],
                      ),
                    );
                  }
                  return SizedBox.shrink();
                }),
              ],
            ),
          ),
          Obx(() {
            if (gameCardModel.title?.value.isNotEmpty ?? false) {
              return Column(
                children: [
                  SizedBox(height: 6.h),
                  SizedBox(
                    width: 88.h,
                    child: Text(
                      gameCardModel.title?.value ?? '',
                      style: TextStyleHelper.instance.body13BoldNotoSans
                          .copyWith(shadows: [
                        Shadow(
                          color: appTheme.color3F0000,
                          offset: Offset(0, 1),
                          blurRadius: 2,
                        ),
                      ]),
                      textAlign: TextAlign.center,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              );
            }
            return SizedBox.shrink();
          }),
        ],
      ),
    );
  }
}
