import 'package:flutter/material.dart';

import '../../../core/app_export.dart';
import '../../../widgets/custom_image_view.dart';
import '../models/wallet_type_model.dart';

class WalletTypeOptionWidget extends StatelessWidget {
  final WalletTypeModel walletType;
  final VoidCallback? onTap;

  WalletTypeOptionWidget({
    Key? key,
    required this.walletType,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isSelected = walletType.isSelected?.value ?? false;
    bool isPIXCPF = walletType.title?.value == 'PIX-CPF';

    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 40.h,
        width: 106.h,
        decoration: BoxDecoration(
          color: appTheme.colorFF2528,
          border: Border.all(
            color: isSelected ? Color(0xFF85D420) : appTheme.transparentCustom,
            width: 1.h,
          ),
          borderRadius: BorderRadius.circular(6.h),
        ),
        child: Stack(
          children: [
            Center(
              child: Text(
                walletType.title?.value ?? '',
                style: TextStyleHelper.instance.body14Bold.copyWith(
                    color: isSelected
                        ? appTheme.whiteCustom
                        : appTheme.colorFF8089,
                    height: 1.2),
              ),
            ),
            if (isSelected && isPIXCPF)
              Positioned(
                right: 8.h,
                top: 3.5.h,
                child: CustomImageView(
                  imagePath: ImageConstant.imgGroup999,
                  height: 33.h,
                  width: 33.h,
                ),
              ),
          ],
        ),
      ),
    );
  }
}
