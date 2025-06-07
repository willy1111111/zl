import 'package:flutter/material.dart';

import '../../../../../core/app_export.dart';
import '../../../../../widgets/custom_image_view.dart';
import '../controller/bet88_agent_jackpot_ranking_controller.dart';

class CountdownTimerWidget extends StatelessWidget {
  CountdownTimerWidget({Key? key}) : super(key: key);

  final controller = Get.find<Bet88AgentJackpotRankingController>();

  @override
  Widget build(BuildContext context) {
    return Obx(() => Row(
          children: [
            _buildCountdownBox(
              controller.days.value.toString().padLeft(2, '0'),
              'Day',
            ),
            SizedBox(width: 8.h),
            CustomImageView(
              imagePath: ImageConstant.imgFrame2131329993,
              height: 3.h,
              width: 10.h,
            ),
            SizedBox(width: 8.h),
            _buildCountdownBox(
              controller.hours.value.toString().padLeft(2, '0'),
              'Hour',
            ),
            SizedBox(width: 8.h),
            CustomImageView(
              imagePath: ImageConstant.imgFrame2131329993,
              height: 3.h,
              width: 10.h,
            ),
            SizedBox(width: 8.h),
            _buildCountdownBox(
              controller.minutes.value.toString().padLeft(2, '0'),
              'Minute',
            ),
            SizedBox(width: 8.h),
            CustomImageView(
              imagePath: ImageConstant.imgFrame2131329993,
              height: 3.h,
              width: 10.h,
            ),
            SizedBox(width: 8.h),
            _buildCountdownBox(
              controller.seconds.value.toString().padLeft(2, '0'),
              'Second',
            ),
          ],
        ));
  }

  Widget _buildCountdownBox(String value, String label) {
    return Container(
      width: 32.h,
      height: 40.h,
      decoration: BoxDecoration(
        color: appTheme.colorFF1E20,
        borderRadius: BorderRadius.circular(10.h),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            value,
            style: TextStyleHelper.instance.body14
                .copyWith(color: appTheme.whiteCustom),
          ),
          Text(
            label,
            style: TextStyleHelper.instance.label8,
          ),
        ],
      ),
    );
  }
}
