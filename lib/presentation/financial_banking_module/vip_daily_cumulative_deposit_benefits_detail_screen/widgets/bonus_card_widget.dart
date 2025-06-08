import 'package:flutter/material.dart';

import '../../../core/app_export.dart';
import '../../../widgets/custom_button.dart';
import '../../../widgets/custom_image_view.dart';
import '../controller/vip_daily_cumulative_deposit_benefits_detail_controller.dart';

class BonusCardWidget extends StatelessWidget {
  BonusCardWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller =
        Get.find<VipDailyCumulativeDepositBenefitsDetailController>();

    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16.h),
      padding: EdgeInsets.all(16.h),
      decoration: BoxDecoration(
        color: appTheme.colorFF2528,
        borderRadius: BorderRadius.circular(8.h),
      ),
      child: Row(
        children: [
          CustomImageView(
            imagePath: ImageConstant.img,
            width: 51.h,
            height: 40.h,
          ),
          SizedBox(width: 16.h),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Bonus From Yesterday:',
                  style: TextStyleHelper.instance.body14Bold
                      .copyWith(color: appTheme.whiteCustom),
                ),
                Obx(() => Text(
                      controller.bonusFromYesterday.value,
                      style: TextStyleHelper.instance.title16Bold
                          .copyWith(color: appTheme.colorFFFFC6),
                    )),
              ],
            ),
          ),
          CustomButton(
            text: 'Receive',
            variant: CustomButtonVariant.gradient,
            width: 80.h,
            height: 36.h,
            onPressed: () => controller.onReceiveBonusPressed(),
          ),
        ],
      ),
    );
  }
}
