import 'package:flutter/material.dart';

import '../../../core/app_export.dart';
import '../../../widgets/custom_image_view.dart';
import '../models/bank_option_model.dart';

class BankOptionItem extends StatelessWidget {
  final BankOptionModel bankOption;
  final VoidCallback? onTap;

  BankOptionItem({
    Key? key,
    required this.bankOption,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(() => GestureDetector(
          onTap: onTap,
          child: Container(
            height: 48.h,
            decoration: BoxDecoration(
              color: appTheme.colorFF2528,
              borderRadius: BorderRadius.circular(6.h),
              border: (bankOption.isSelected?.value ?? false)
                  ? Border.all(color: appTheme.colorFF85D4)
                  : null,
            ),
            child: Stack(
              children: [
                Center(
                  child: Text(
                    bankOption.name?.value ?? '',
                    style: TextStyleHelper.instance.body14Bold.copyWith(
                        color: (bankOption.isSelected?.value ?? false)
                            ? appTheme.whiteCustom
                            : appTheme.colorFF8089),
                    textAlign: TextAlign.center,
                  ),
                ),
                if (bankOption.isSelected?.value ?? false)
                  Positioned(
                    top: 4.h,
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
        ));
  }
}
