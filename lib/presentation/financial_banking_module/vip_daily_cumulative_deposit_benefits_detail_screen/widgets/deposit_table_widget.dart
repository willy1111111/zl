import 'package:flutter/material.dart';

import '../../../core/app_export.dart';
import '../models/deposit_entry_model.dart';

class DepositTableWidget extends StatelessWidget {
  final RxList<DepositEntryModel> depositEntries;

  DepositTableWidget({
    Key? key,
    required this.depositEntries,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Cumulative Deposit',
              style: TextStyleHelper.instance.body12,
            ),
            Text(
              'Get',
              style: TextStyleHelper.instance.body12,
            ),
          ],
        ),
        SizedBox(height: 8.h),
        Obx(() => Column(
              children: depositEntries
                  .map((entry) => Container(
                        margin: EdgeInsets.only(bottom: 4.h),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              entry.deposit?.value ?? '',
                              style: TextStyleHelper.instance.body12,
                            ),
                            Text(
                              entry.reward?.value ?? '',
                              style: TextStyleHelper.instance.body12,
                            ),
                          ],
                        ),
                      ))
                  .toList(),
            )),
      ],
    );
  }
}
