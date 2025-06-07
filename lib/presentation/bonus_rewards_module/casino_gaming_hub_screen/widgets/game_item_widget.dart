import 'package:flutter/material.dart';

import '../../../../../core/app_export.dart';
import '../../../../../widgets/custom_image_view.dart';
import '../models/game_item_model.dart';

class GameItemWidget extends StatelessWidget {
  final GameItemModel gameItemModel;
  final VoidCallback? onTap;

  GameItemWidget({
    Key? key,
    required this.gameItemModel,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onTap,
        child: Column(children: [
          Container(
              width: 88.h,
              height: 88.h,
              child: Stack(children: [
                if (gameItemModel.hasCustomBackground?.value ?? false)
                  Container(
                      width: 88.h,
                      height: 88.h,
                      decoration: BoxDecoration(
                          color: appTheme.colorFF3035,
                          borderRadius: BorderRadius.circular(4.h)),
                      child: Center(
                          child: CustomImageView(
                              imagePath: gameItemModel.imagePath?.value ?? '',
                              width: 56.h,
                              height: 20.h,
                              radius: BorderRadius.circular(4.h))))
                else
                  CustomImageView(
                      imagePath: gameItemModel.imagePath?.value ?? '',
                      width: 88.h,
                      height: 88.h,
                      radius: BorderRadius.circular(4.h),
                      fit: BoxFit.cover),
                if (gameItemModel.hasSecondaryOverlay?.value ?? false)
                  CustomImageView(
                      imagePath:
                          gameItemModel.secondaryOverlayPath?.value ?? '',
                      width: 88.h,
                      height: 88.h,
                      radius: BorderRadius.circular(4.h)),
                if (gameItemModel.overlayImagePath?.value != null)
                  Positioned(
                      top: 0,
                      left: 0,
                      child: CustomImageView(
                          imagePath:
                              gameItemModel.overlayImagePath?.value ?? '',
                          width: 34.h,
                          height: 18.h))
                else if (!(gameItemModel.hasCustomBackground?.value ?? false))
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
                                  bottomRight: Radius.circular(6.h)),
                              boxShadow: [
                                BoxShadow(
                                    color: appTheme.colorFF0000,
                                    offset: Offset(0, 1.h),
                                    blurRadius: 2.h),
                              ]))),
                if (gameItemModel.badgeNumber?.value != null)
                  Positioned(
                      top: 47.h,
                      right: 11.h,
                      child: Container(
                          width: 14.h,
                          height: 14.h,
                          decoration: BoxDecoration(
                              color: appTheme.colorFFF335,
                              shape: BoxShape.circle),
                          child: Center(
                              child: Text('${gameItemModel.badgeNumber?.value}',
                                  style: TextStyleHelper.instance.body12Black
                                      .copyWith(
                                          letterSpacing: 2, height: 1.42))))),
              ])),
          SizedBox(height: 8.h),
          Text(gameItemModel.title?.value ?? '',
              style: TextStyleHelper.instance.body13Bold
                  .copyWith(height: 1.23, shadows: [
                Shadow(
                    color: appTheme.colorFF0000,
                    offset: Offset(0, 1.h),
                    blurRadius: 2.h),
              ]),
              textAlign: TextAlign.center),
        ]));
  }
}
