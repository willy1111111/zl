import 'package:flutter/material.dart';

import '../../../core/app_export.dart';
import '../../../widgets/custom_image_view.dart';
import '../models/wallet_card_item_model.dart';

class WalletCardItemWidget extends StatelessWidget {
  WalletCardItemModel model;
  VoidCallback? onTapCard;

  WalletCardItemWidget(
    this.model, {
    Key? key,
    this.onTapCard,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTapCard,
      child: Container(
        height: 110.h,
        width: 335.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.h),
          gradient: LinearGradient(
            begin: Alignment(0.139, 0),
            end: Alignment(1, 1),
            colors: model.gradientColors?.value ??
                [appTheme.greyCustom, appTheme.greyCustom],
          ),
        ),
        child: Stack(
          children: [
            // Card Image
            Positioned(
              top: 12.h,
              right: 12.h,
              child: CustomImageView(
                imagePath: model.cardImage?.value ?? '',
                height: 80.h,
                width: 75.h,
              ),
            ),

            // Card Shadow
            Positioned(
              top: 91.h,
              right: 12.h,
              child: Container(
                width: 75.h,
                height: 9.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4.h),
                  gradient: LinearGradient(
                    colors: [Color(0x7F3F3F3F), Color(0x7F3F3F3F)],
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: appTheme.colorFF8888,
                      offset: Offset(0, 4),
                      blurRadius: 12.h,
                    ),
                  ],
                ),
              ),
            ),

            // Card Line
            Positioned(
              top: 38.h,
              left: 16.h,
              child: Container(
                width: 146.h,
                height: 1.h,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Color(0xFFFFC700), Color(0xFFFFC700)],
                  ),
                ),
              ),
            ),

            // PIX Logo and Details (only for primary card)
            if (model.showDetails?.value ?? false) ...[
              // PIX Logo
              Positioned(
                top: 11.h,
                left: 18.h,
                child: CustomImageView(
                  imagePath: model.pixLogo?.value ?? '',
                  height: 17.h,
                  width: 18.h,
                ),
              ),

              // PIX-MOBILE Text
              Positioned(
                top: 10.h,
                left: 44.h,
                child: Text(
                  model.pixMobileText?.value ?? '',
                  style: TextStyleHelper.instance.title16BoldMicrosoftYaHei
                      .copyWith(height: 1.375),
                ),
              ),

              // Card Number
              Positioned(
                top: 41.h,
                left: 16.h,
                child: Text(
                  model.cardNumber?.value ?? '',
                  style: TextStyleHelper.instance.headline24BlackArial
                      .copyWith(height: 1.417, shadows: [
                    Shadow(
                      color: appTheme.blackCustom,
                      offset: Offset(0, 1),
                      blurRadius: 2.h,
                    ),
                  ]),
                ),
              ),

              // Expiry Date
              Positioned(
                top: 80.h,
                left: 18.h,
                child: Text(
                  model.expiryDate?.value ?? '',
                  style: TextStyleHelper.instance.body12BoldArial2
                      .copyWith(height: 1.167),
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }
}
