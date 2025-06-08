import 'package:flutter/material.dart';

import '../../../core/app_export.dart';
import '../../../widgets/custom_image_view.dart';
import '../models/game_item_model.dart';

class GameTileWidget extends StatelessWidget {
  final GameItemModel gameItem;
  final VoidCallback? onTap;

  const GameTileWidget({
    Key? key,
    required this.gameItem,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(() => GestureDetector(
          onTap: onTap,
          child: Container(
            width: 90.h,
            height: 90.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.h),
              border: Border.all(
                width: 3.h,
                color: appTheme.transparentCustom,
              ),
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color(0xFFF2B402),
                  appTheme.colorFFFDD8,
                  Color(0xFFC86D00)
                ],
              ),
            ),
            child: Container(
              margin: EdgeInsets.all(3.h),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(7.h),
                color: gameItem.backgroundColor?.value ?? Color(0xFF16A085),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomImageView(
                    imagePath: gameItem.imagePath?.value ?? '',
                    width: gameItem.imagePath?.value.contains('1277') == true
                        ? 44.h
                        : 51.h,
                    height: gameItem.imagePath?.value.contains('1277') == true
                        ? 50.h
                        : 54.h,
                  ),
                  SizedBox(height: 4.h),
                  Text(
                    gameItem.text?.value ?? '',
                    style: TextStyleHelper.instance.body14Bold.copyWith(
                        color: gameItem.textColor?.value ?? Color(0xFFFDC609),
                        letterSpacing: 1.h,
                        height: 1.14,
                        shadows: [
                          Shadow(
                            color: appTheme.colorFF0000,
                            offset: Offset(0, 2.h),
                            blurRadius: 4.h,
                          ),
                        ]),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
