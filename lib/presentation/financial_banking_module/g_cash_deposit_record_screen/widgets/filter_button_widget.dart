import 'package:flutter/material.dart';

import '../../../core/app_export.dart';
import '../models/filter_button_model.dart';

class FilterButtonWidget extends StatelessWidget {
  final FilterButtonModel filterButtonModel;
  final VoidCallback? onTap;

  FilterButtonWidget({
    Key? key,
    required this.filterButtonModel,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(() => GestureDetector(
          onTap: onTap,
          child: Container(
            width: 102.h,
            height: 40.h,
            decoration: BoxDecoration(
              color: (filterButtonModel.isSelected?.value ?? false)
                  ? Color(0xFF85D420)
                  : appTheme.colorFF2528,
              borderRadius: BorderRadius.circular(4.h),
            ),
            child: Center(
              child: Text(
                filterButtonModel.title?.value ?? '',
                style: TextStyleHelper.instance.body14Bold.copyWith(
                    color: (filterButtonModel.isSelected?.value ?? false)
                        ? appTheme.whiteCustom
                        : appTheme.colorFF8089,
                    height: 1.2),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ));
  }
}
