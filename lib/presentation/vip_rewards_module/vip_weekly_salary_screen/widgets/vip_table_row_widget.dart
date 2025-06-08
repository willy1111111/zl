import 'package:flutter/material.dart';

import '../../../../../core/app_export.dart';
import '../models/vip_table_row_model.dart';

class VipTableRowWidget extends StatelessWidget {
  final VipTableRowModel tableRow;

  VipTableRowWidget({
    Key? key,
    required this.tableRow,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              flex: 1,
              child: Text(
                tableRow.rowTitle?.value ?? '',
                style: TextStyleHelper.instance.body14Bold,
              ),
            ),
            ...tableRow.values?.map((value) {
                  return Expanded(
                    flex: 1,
                    child: Text(
                      value?.value ?? '',
                      style: TextStyleHelper.instance.body12Bold.copyWith(
                          color: (tableRow.isHighlighted?.value ?? false)
                              ? appTheme.whiteCustom
                              : appTheme.colorFF8089),
                      textAlign: TextAlign.center,
                    ),
                  );
                }).toList() ??
                [],
          ],
        ),
        Container(
          height: 1.h,
          color: appTheme.colorFF282F,
          margin: EdgeInsets.symmetric(vertical: 8.h),
        ),
      ],
    );
  }
}
