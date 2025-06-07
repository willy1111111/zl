import 'package:flutter/material.dart';

import '../../../../../core/app_export.dart';
import '../controller/registration_bonus_controller.dart';

class BonusDataTableWidget extends StatelessWidget {
  BonusDataTableWidget({Key? key}) : super(key: key);

  var controller = Get.find<RegistrationBonusController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16.h, vertical: 16.h),
      decoration: BoxDecoration(
        border: Border.all(color: appTheme.colorFF2528),
        borderRadius: BorderRadius.circular(5.h),
      ),
      child: Column(
        children: [
          // Table Header
          Container(
            height: 40.h,
            child: Row(
              children: [
                Container(
                  width: 116.h,
                  height: 40.h,
                  decoration: BoxDecoration(
                    color: appTheme.colorFF61AC,
                  ),
                  child: Center(
                    child: Text(
                      'Date',
                      style: TextStyleHelper.instance.body12Bold
                          .copyWith(color: appTheme.whiteCustom),
                    ),
                  ),
                ),
                Container(
                  width: 115.h,
                  height: 40.h,
                  decoration: BoxDecoration(
                    color: appTheme.colorFF61AC,
                    border: Border(
                      left: BorderSide(color: appTheme.whiteCustom, width: 1),
                    ),
                  ),
                  child: Center(
                    child: Text(
                      'Teams',
                      style: TextStyleHelper.instance.body12Bold
                          .copyWith(color: appTheme.whiteCustom),
                    ),
                  ),
                ),
                Container(
                  width: 114.h,
                  height: 40.h,
                  decoration: BoxDecoration(
                    color: appTheme.colorFF61AC,
                    border: Border(
                      left: BorderSide(color: appTheme.whiteCustom, width: 1),
                    ),
                  ),
                  child: Center(
                    child: Text(
                      'Bonus',
                      style: TextStyleHelper.instance.body12Bold
                          .copyWith(color: appTheme.whiteCustom),
                    ),
                  ),
                ),
              ],
            ),
          ),

          // Table Data
          Obx(() => Column(
                children: controller.bonusDataList.map((bonusData) {
                  return Container(
                    height: 40.h,
                    child: Row(
                      children: [
                        Container(
                          width: 116.h,
                          height: 40.h,
                          padding: EdgeInsets.symmetric(horizontal: 8.h),
                          decoration: BoxDecoration(
                            color: (bonusData.isEvenRow?.value ?? false)
                                ? Color(0xFF1E2024)
                                : appTheme.colorFF2527,
                          ),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              bonusData.date?.value ?? '',
                              style: TextStyleHelper.instance.body12Bold
                                  .copyWith(color: appTheme.colorFF8089),
                            ),
                          ),
                        ),
                        Container(
                          width: 115.h,
                          height: 40.h,
                          decoration: BoxDecoration(
                            color: (bonusData.isEvenRow?.value ?? false)
                                ? Color(0xFF1E2024)
                                : appTheme.colorFF2527,
                          ),
                          child: Center(
                            child: Text(
                              bonusData.team?.value ?? '',
                              style: TextStyleHelper.instance.body12Bold
                                  .copyWith(color: appTheme.colorFF8089),
                            ),
                          ),
                        ),
                        Container(
                          width: 114.h,
                          height: 40.h,
                          decoration: BoxDecoration(
                            color: (bonusData.isEvenRow?.value ?? false)
                                ? Color(0xFF1E2024)
                                : appTheme.colorFF2527,
                          ),
                          child: Center(
                            child: Text(
                              bonusData.bonus?.value ?? '',
                              style: TextStyleHelper.instance.body12Bold
                                  .copyWith(color: appTheme.colorFFFFC6),
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                }).toList(),
              )),
        ],
      ),
    );
  }
}
