import 'package:flutter/material.dart';

import '../../../core/app_export.dart';
import '../../../widgets/custom_image_view.dart';
import '../models/payment_method_model.dart';

class PaymentMethodItem extends StatelessWidget {
  final PaymentMethodModel paymentMethod;
  final VoidCallback? onTap;

  PaymentMethodItem({
    Key? key,
    required this.paymentMethod,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(() => GestureDetector(
          onTap: onTap,
          child: Container(
            height: 92.h,
            width: 80.h,
            decoration: BoxDecoration(
              color: appTheme.colorFF2528,
              borderRadius: BorderRadius.circular(6.h),
              border: (paymentMethod.isSelected?.value ?? false)
                  ? Border.all(color: appTheme.colorFF85D4)
                  : null,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 36.h,
                  height: 36.h,
                  decoration: (paymentMethod.hasWhiteBackground?.value ?? false)
                      ? BoxDecoration(
                          color: appTheme.whiteCustom,
                          borderRadius: BorderRadius.circular(8.h),
                        )
                      : null,
                  child: (paymentMethod.hasWhiteBackground?.value ?? false)
                      ? Padding(
                          padding: EdgeInsets.all(5.h),
                          child: CustomImageView(
                            imagePath: paymentMethod.iconPath?.value ?? '',
                            height: 26.h,
                            width: 26.h,
                            fit: BoxFit.contain,
                          ),
                        )
                      : CustomImageView(
                          imagePath: paymentMethod.iconPath?.value ?? '',
                          height: 36.h,
                          width: 36.h,
                          fit: BoxFit.cover,
                        ),
                ),
                SizedBox(height: 8.h),
                Text(
                  paymentMethod.name?.value ?? '',
                  style: TextStyleHelper.instance.body14Bold.copyWith(
                      color: (paymentMethod.isSelected?.value ?? false)
                          ? appTheme.whiteCustom
                          : appTheme.colorFF8089),
                  textAlign: TextAlign.center,
                ),
                if (paymentMethod.isSelected?.value ?? false)
                  Positioned(
                    top: 8.h,
                    right: 8.h,
                    child: CustomImageView(
                      imagePath: ImageConstant.imgGroup998,
                      height: 21.h,
                      width: 21.h,
                    ),
                  ),
              ],
            ),
          ),
        ));
  }
}
