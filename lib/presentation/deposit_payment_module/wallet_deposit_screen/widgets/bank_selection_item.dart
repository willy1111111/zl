import 'package:flutter/material.dart';

import '../../../core/app_export.dart';
import '../../../widgets/custom_image_view.dart';
import '../models/bank_selection_model.dart';

class BankSelectionItem extends StatelessWidget {
  final BankSelectionModel bank;
  final VoidCallback? onTap;

  const BankSelectionItem({
    Key? key,
    required this.bank,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(() => GestureDetector(
          onTap: onTap,
          child: Container(
            height: 48.h,
            width: 80.h,
            decoration: BoxDecoration(
              color: appTheme.colorFF2528,
              borderRadius: BorderRadius.circular(6.h),
              border: (bank.isSelected?.value ?? false)
                  ? Border.all(color: appTheme.colorFF85D4)
                  : null,
            ),
            child: Stack(
              children: [
                Center(
                  child: Text(
                    bank.name?.value ?? '',
                    style: TextStyleHelper.instance.body14Bold.copyWith(
                        color: (bank.isSelected?.value ?? false)
                            ? appTheme.whiteCustom
                            : appTheme.colorFF8089),
                    textAlign: TextAlign.center,
                  ),
                ),
                if (bank.hasCheckIcon?.value ?? false)
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
        ));
  }
}
