import 'package:flutter/material.dart';

import '../../../core/app_export.dart';
import '../../../widgets/custom_image_view.dart';
import '../models/deposit_entry_model.dart';
import '../models/vip_card_model.dart';
import './deposit_table_widget.dart';

class VipCardWidget extends StatelessWidget {
  final VipCardModel vipLevel;

  VipCardWidget({
    Key? key,
    required this.vipLevel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.h),
      decoration: BoxDecoration(
        color: appTheme.colorFF2528,
        borderRadius: BorderRadius.circular(8.h),
      ),
      child: Stack(
        children: [
          CustomImageView(
            imagePath: vipLevel.backgroundImage?.value ?? '',
            width: 141.h,
            height: 165.h,
            fit: BoxFit.cover,
          ),
          if (vipLevel.hasSpecialIndicator?.value ?? false)
            Positioned(
              top: vipLevel.vipLevel?.value == 'VIP6' ? 47.h : 50.h,
              left: vipLevel.vipLevel?.value == 'VIP6' ? 73.h : 77.h,
              child: Container(
                width: vipLevel.vipLevel?.value == 'VIP6' ? 19.h : 12.h,
                height: vipLevel.vipLevel?.value == 'VIP6' ? 19.h : 12.h,
                decoration: BoxDecoration(
                  color: vipLevel.specialIndicatorColor?.value ??
                      appTheme.transparentCustom,
                  borderRadius: BorderRadius.circular(
                    vipLevel.vipLevel?.value == 'VIP6' ? 9.h : 6.h,
                  ),
                ),
              ),
            ),
          Positioned(
            top: 23.h,
            left: 55.h,
            child: CustomImageView(
              imagePath: vipLevel.iconImage?.value ?? '',
              width: vipLevel.vipLevel?.value == 'VIP10' ? 54.h : 56.h,
              height: vipLevel.vipLevel?.value == 'VIP10' ? 54.h : 56.h,
            ),
          ),
          Positioned(
            top: 8.h,
            left: vipLevel.vipLevel?.value == 'VIP10' ? 63.h : 67.h,
            child: Text(
              vipLevel.vipLevel?.value ?? '',
              style: TextStyleHelper.instance.body14Bold
                  .copyWith(color: appTheme.blackCustom),
            ),
          ),
          Positioned(
            top: 70.h,
            left: vipLevel.vipLevel?.value == 'VIP10' ? 19.h : 29.h,
            child: Text(
              vipLevel.maxAmount?.value ?? '',
              style: TextStyleHelper.instance.headline30Black
                  .copyWith(height: 1.43),
            ),
          ),
          Positioned(
            top: 115.h,
            left: 67.h,
            child: Text(
              'MAX',
              style: TextStyleHelper.instance.body14Bold
                  .copyWith(color: appTheme.blackCustom),
            ),
          ),
          Positioned(
            top: 146.h,
            left: 10.h,
            right: 10.h,
            child: DepositTableWidget(
              depositEntries:
                  vipLevel.depositEntries ?? <DepositEntryModel>[].obs,
            ),
          ),
          Positioned(
            top: 164.h,
            left: 0,
            child: Container(
              width: 1.h,
              height: 165.h,
              color: appTheme.colorFF292F,
            ),
          ),
        ],
      ),
    );
  }
}
