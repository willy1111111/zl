import 'package:flutter/material.dart';

import '../../../core/app_export.dart';
import '../models/chip_view_model.dart';

class ChipViewWidget extends StatelessWidget {
  final ChipViewModel chipModel;
  final VoidCallback? onTap;

  ChipViewWidget({
    Key? key,
    required this.chipModel,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Obx(() => Container(
            height: 40.h,
            decoration: BoxDecoration(
              color: (chipModel.isSelected?.value ?? false)
                  ? Color(0xFF85D420)
                  : appTheme.colorFF2528,
              borderRadius: BorderRadius.circular(4.h),
            ),
            child: Center(
              child: Text(
                chipModel.title?.value ?? '',
                style: TextStyleHelper.instance.body14Bold.copyWith(
                    color: (chipModel.isSelected?.value ?? false)
                        ? appTheme.whiteCustom
                        : appTheme.colorFF8089),
                textAlign: TextAlign.center,
              ),
            ),
          )),
    );
  }
}
