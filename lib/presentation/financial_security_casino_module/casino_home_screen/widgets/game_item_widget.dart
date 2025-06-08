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
        child: Column(children: [
          Stack(children: [
            if (gameItem.isPlaceholder?.value ?? false)
              Container(
                  width: 88.h,
                  height: 88.h,
                  decoration: BoxDecoration(
                      color: appTheme.colorFF3035,
                      borderRadius: BorderRadius.circular(4.h)),
                  child: Center(
                      child: CustomImageView(
                          imagePath: gameItem.image?.value ?? '',
                          width: 56.h,
                          height: 20.h)))
            else
              CustomImageView(
                  imagePath: gameItem.image?.value ?? '',
                  width: 88.h,
                  height: 88.h,
                  radius: BorderRadius.circular(4.h)),
            if (gameItem.baccaratOverlay?.value.isNotEmpty ?? false)
              CustomImageView(
                  imagePath: gameItem.baccaratOverlay?.value ?? '',
                  width: 88.h,
                  height: 88.h,
                  radius: BorderRadius.circular(4.h)),
            if (gameItem.overlayImage?.value.isNotEmpty ?? false)
              Positioned(
                  top: 0,
                  left: 0,
                  child: CustomImageView(
                      imagePath: gameItem.overlayImage?.value ?? '',
                      width: 34.h,
                      height: 18.h)),
            if (gameItem.hasSpecialButton?.value ?? false)
              Positioned(
                  top: 27.h,
                  left: 1.h,
                  child: Container(
                      width: 90.h,
                      height: 28.h,
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                              colors: [Color(0xFFFFC600), Color(0xFFEB6200)],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter),
                          borderRadius: BorderRadius.circular(14.h),
                          boxShadow: [
                            BoxShadow(
                                color: appTheme.color7FFBFF,
                                offset: Offset(0, 3),
                                blurRadius: 6),
                          ]),
                      child: Stack(children: [
                        Positioned(
                            left: 6.h,
                            top: 4.h,
                            child: Container(
                                width: 77.h,
                                height: 14.h,
                                decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                        colors: [
                                          Color(0x99FFF8F2),
                                          Color(0x99FFF5EA)
                                        ],
                                        begin: Alignment.topCenter,
                                        end: Alignment.bottomCenter),
                                    borderRadius: BorderRadius.circular(7.h)))),
                        Center(
                            child: Text(
                                gameItem.specialButtonText?.value ?? 'Receive',
                                style: TextStyleHelper.instance.body14BoldArial
                                    .copyWith(
                                        color: appTheme.whiteCustom,
                                        height: 1.57,
                                        shadows: [
                                      Shadow(
                                          color: appTheme.colorFF1C1F,
                                          offset: Offset(0, 1)),
                                    ]))),
                      ]))),
            if (gameItem.signInText?.value.isNotEmpty ?? false)
              Positioned(
                  top: 42.h,
                  left: 18.h,
                  child: Text(gameItem.signInText?.value ?? '',
                      style: TextStyleHelper.instance.body12BlackArial
                          .copyWith(height: 1.42))),
          ]),
          SizedBox(height: 10.h),
          Text(gameItem.title?.value ?? '',
              style: TextStyleHelper.instance.body13BoldNotoSans
                  .copyWith(height: 1.23, shadows: [
                Shadow(
                    color: appTheme.blackCustom,
                    offset: Offset(0, 1),
                    blurRadius: 2),
              ]),
              textAlign: TextAlign.center),
          if (gameItem.hasAdditionalOverlay?.value ?? false)
            Container(
                margin: EdgeInsets.only(top: 2.h),
                child: CustomImageView(
                    imagePath: ImageConstant.imgGroup1024,
                    width: 34.h,
                    height: 18.h)),
        ]));
  }
}
