import 'package:flutter/material.dart';

import '../../../core/app_export.dart';
import '../../../widgets/custom_image_view.dart';
import '../models/wallet_type_option_model.dart';

class WalletTypeOptionWidget extends StatelessWidget {
  final WalletTypeOptionModel walletType;
  final bool isSelected;
  final VoidCallback onTap;

  WalletTypeOptionWidget({
    Key? key,
    required this.walletType,
    required this.isSelected,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 40.h,
        width: 106.h,
        decoration: BoxDecoration(
          color: appTheme.colorFF2528,
          borderRadius: BorderRadius.circular(6.h),
          border: isSelected
              ? Border.all(color: appTheme.colorFF85D4, width: 1.h)
              : null,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 12.h),
              child: Text(
                walletType.type?.value ?? '',
                style: TextStyleHelper.instance.body14Bold.copyWith(
                    color: isSelected
                        ? appTheme.whiteCustom
                        : appTheme.colorFF8089),
              ),
            ),
            if (isSelected)
              Padding(
                padding: EdgeInsets.only(right: 4.h),
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
