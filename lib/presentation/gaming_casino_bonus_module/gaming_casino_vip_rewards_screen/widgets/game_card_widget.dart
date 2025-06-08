import 'package:flutter/material.dart';

import '../../../core/app_export.dart';
import '../../../widgets/custom_image_view.dart';
import '../models/game_card_model.dart';

class GameCardWidget extends StatelessWidget {
  final GameCardModel gameModel;
  final VoidCallback? onTap;

  GameCardWidget({
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
          Stack(
            children: [
              Container(
                height: 88.h,
                width: 88.h,
                decoration: BoxDecoration(
                  color: gameModel.title?.value == 'Money Coming'
                      ? Color(0xFF30353A)
                      : null,
                  borderRadius: BorderRadius.circular(4.h),
                ),
                child: gameModel.backgroundImage?.value != null
                    ? CustomImageView(
                        imagePath: gameModel.backgroundImage?.value ?? '',
                        height: 88.h,
                        width: 88.h,
                        radius: BorderRadius.circular(4.h),
                        fit: BoxFit.cover,
                      )
                    : Center(
                        child: CustomImageView(
                          imagePath: ImageConstant.imgLogowj93120x56,
                          height: 20.h,
                          width: 56.h,
                        ),
                      ),
              ),
              if (gameModel.overlayImage?.value != null)
                Positioned.fill(
                  child: CustomImageView(
                    imagePath: gameModel.overlayImage?.value ?? '',
                    height: 88.h,
                    width: 88.h,
                    radius: BorderRadius.circular(4.h),
                    fit: BoxFit.cover,
                  ),
                ),
              Positioned(
                top: 27.h,
                left: 35.h,
                child: Container(
                  height: 34.h,
                  width: 18.h,
                  decoration: BoxDecoration(
                    color: gameModel.overlayImage?.value != null
                        ? null
                        : appTheme.colorFF4147,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(2.h),
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
                  child: gameModel.overlayImage?.value != null
                      ? CustomImageView(
                          imagePath: gameModel.overlayImage?.value ?? '',
                          height: 34.h,
                          width: 18.h,
                        )
                      : null,
                ),
              ),
              if (gameModel.hasNotification?.value ?? false)
                Positioned(
                  top: 47.h,
                  right: 8.h,
                  child: Container(
                    height: 14.h,
                    width: 14.h,
                    decoration: BoxDecoration(
                      color: appTheme.colorFFF335,
                      shape: BoxShape.circle,
                    ),
                    child: Center(
                      child: Text(
                        '1',
                        style: TextStyleHelper.instance.body12Black
                            .copyWith(letterSpacing: 2.h),
                      ),
                    ),
                  ),
                ),
            ],
          ),
          SizedBox(height: 2.h),
          Text(
            gameModel.title?.value ?? '',
            style: TextStyleHelper.instance.body13Bold,
            textAlign: TextAlign.center,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}
