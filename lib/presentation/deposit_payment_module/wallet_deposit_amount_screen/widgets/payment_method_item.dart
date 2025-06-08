import 'package:flutter/material.dart';

import '../../../core/app_export.dart';
import '../../../widgets/custom_image_view.dart';
import '../models/payment_method_model.dart';

class PaymentMethodItem extends StatelessWidget {
  final PaymentMethodModel paymentMethod;
  final bool isSelected;
  final VoidCallback onTap;

  const PaymentMethodItem({
    Key? key,
    required this.paymentMethod,
    required this.isSelected,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 48.h,
        decoration: BoxDecoration(
          color: appTheme.colorFF2528,
          border: isSelected ? Border.all(color: appTheme.colorFF85D4) : null,
          borderRadius: BorderRadius.circular(6.h),
        ),
        padding: EdgeInsets.all(8.h),
        child: Stack(
          children: [
            Center(
              child: Text(
                paymentMethod.name?.value ?? '',
                style: TextStyleHelper.instance.body14Bold.copyWith(
                    color: isSelected
                        ? appTheme.whiteCustom
                        : appTheme.colorFF8089),
                textAlign: TextAlign.center,
              ),
            ),
            if (isSelected)
              Positioned(
                bottom: 4.h,
                right: 4.h,
                child: CustomImageView(
                  imagePath: ImageConstant.imgGroup998,
                  height: 21.h,
                  width: 21.h,
                ),
              ),
          ],
        ),
      ),
    );
  }
}
