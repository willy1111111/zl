import 'package:flutter/material.dart';

import '../../../../../core/app_export.dart';
import '../../../widgets/custom_image_view.dart';
import '../models/game_item_model.dart';

class GameItemWidget extends StatelessWidget {
  final GameItemModel gameItem;
  final VoidCallback? onTap;

  GameItemWidget({
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
              Container(
                width: 88.h,
                height: 88.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4.h),
                  color: gameItem.backgroundColor
                      ?.value, // Modified: Use value property for Rx<Color>
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(4.h),
                  child: CustomImageView(
                    imagePath: gameItem.imagePath?.value ??
                        '', // Modified: Use value property for Rx<String>
                    width: 88.h,
                    height: 88.h,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              if (gameItem.overlayImage?.value.isNotEmpty == true)
                Positioned.fill(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(4.h),
                    child: CustomImageView(
                      imagePath: gameItem.overlayImage?.value ??
                          '', // Modified: Use value property for Rx<String>
                      width: 88.h,
                      height: 88.h,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              if (gameItem.iconImage?.value.isNotEmpty == true)
                Positioned(
                  top: 0,
                  left: 0,
                  child: CustomImageView(
                    imagePath: gameItem.iconImage?.value ??
                        '', // Modified: Use value property for Rx<String>
                    width: 34.h,
                    height: 18.h,
                  ),
                ),
              if (gameItem.hasNotification?.value == true &&
                  gameItem.notificationCount?.value != null)
                Positioned(
                  top: 75.h,
                  right: 10.h,
                  child: Container(
                    width: 14.h,
                    height: 14.h,
                    decoration: BoxDecoration(
                      color: appTheme.colorFFF335,
                      borderRadius: BorderRadius.circular(7.h),
                    ),
                    child: Center(
                      child: Text(
                        '${gameItem.notificationCount?.value}',
                        style: TextStyleHelper.instance.body12Black.copyWith(
                            color: appTheme.whiteCustom,
                            letterSpacing: 2,
                            height: 1.42),
                      ),
                    ),
                  ),
                ),
            ],
          ),
          if (gameItem.title?.value.isNotEmpty == true)
            Padding(
              padding: EdgeInsets.only(top: 2.h),
              child: Text(
                gameItem.title?.value ??
                    '', // Modified: Use value property for Rx<String>
                style:
                    TextStyleHelper.instance.body13Bold.copyWith(height: 1.23),
                textAlign: TextAlign.center,
              ),
            ),
        ],
      ),
    );
  }
}
