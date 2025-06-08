import 'package:flutter/material.dart';

import '../../../core/app_export.dart';
import '../models/amount_button_model.dart';

class AmountButtonItem extends StatelessWidget {
  final AmountButtonModel amount;
  final VoidCallback? onTap;

  const AmountButtonItem({
    Key? key,
    required this.amount,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(() => GestureDetector(
          onTap: onTap,
          child: Container(
            height: 50.h,
            width: 80.h,
            decoration: BoxDecoration(
              color: appTheme.colorFF2528,
              borderRadius: BorderRadius.circular(6.h),
            ),
            child: Stack(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 16.h,
                          height: 16.h,
                          decoration: BoxDecoration(
                            color: appTheme.colorFFFFC6,
                            shape: BoxShape.circle,
                          ),
                          child: Center(
                            child: Text(
                              '₱',
                              style: TextStyleHelper.instance.body13,
                            ),
                          ),
                        ),
                        SizedBox(width: 4.h),
                        Text(
                          amount.amount?.value ?? '',
                          style: TextStyleHelper.instance.body14Bold
                              .copyWith(color: appTheme.whiteCustom),
                        ),
                      ],
                    ),
                    if (amount.bonus?.value.isNotEmpty ?? false) ...[
                      SizedBox(height: 4.h),
                      Text(
                        amount.bonus?.value ?? '',
                        style: TextStyleHelper.instance.body12Bold
                            .copyWith(color: appTheme.colorFFABB6),
                      ),
                    ],
                  ],
                ),
                if (amount.hasHotBadge?.value ?? false)
                  Positioned(
                    top: 0,
                    left: 0,
                    child: Container(
                      width: 25.h,
                      height: 26.h,
                      decoration: BoxDecoration(
                        color: appTheme.colorFFF652,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(7.h),
                        ),
                      ),
                      child: Center(
                        child: Text(
                          'HOT',
                          style: TextStyleHelper.instance.label8Bold,
                        ),
                      ),
                    ),
                  ),
              ],
            ),
          ),
        ));
  }
}
