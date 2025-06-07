import 'package:flutter/material.dart';

import '../../../../../core/app_export.dart';
import '../controller/registration_success_controller.dart';

class CountdownTimerWidget extends StatelessWidget {
  CountdownTimerWidget({Key? key}) : super(key: key);

  var controller = Get.find<RegistrationSuccessController>();

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      final timer = controller.countdownTimer.value;
      if (timer == null) return SizedBox.shrink();

      return Column(
        children: [
          Row(
            children: [
              _buildTimeUnit(
                  '${timer.hours.value.toString().padLeft(2, '0')}', 35.h),
              SizedBox(width: 6.h),
              Text(
                ':',
                style: TextStyleHelper.instance.title18BoldArial,
              ),
              SizedBox(width: 6.h),
              _buildTimeUnit(
                  '${timer.minutes.value.toString().padLeft(2, '0')}', 35.h),
              SizedBox(width: 6.h),
              Text(
                ':',
                style: TextStyleHelper.instance.title18BoldArial,
              ),
              SizedBox(width: 6.h),
              _buildTimeUnit('${timer.seconds.value.toStringAsFixed(2)}', 69.h),
              SizedBox(width: 18.h),
            ],
          ),
          SizedBox(height: 2.h),
          Row(
            children: [
              SizedBox(width: 5.h),
              Text(
                'HRS',
                style: TextStyleHelper.instance.body12BoldArial
                    .copyWith(color: appTheme.colorFF4B55),
              ),
              SizedBox(width: 22.h),
              Text(
                'MIN S',
                style: TextStyleHelper.instance.body12BoldArial
                    .copyWith(color: appTheme.colorFF4B55),
              ),
              SizedBox(width: 36.h),
              Text(
                'SEC S',
                style: TextStyleHelper.instance.body12BoldArial
                    .copyWith(color: appTheme.colorFF4B55),
              ),
            ],
          ),
        ],
      );
    });
  }

  Widget _buildTimeUnit(String value, double width) {
    return Container(
      width: width,
      height: 32.h,
      decoration: BoxDecoration(
        color: appTheme.colorFF1E20,
        border: Border.all(color: appTheme.colorFF4B55, width: 1.h),
        borderRadius: BorderRadius.circular(4.h),
      ),
      child: Center(
        child: Text(
          value,
          style: TextStyleHelper.instance.headline24BoldArial,
        ),
      ),
    );
  }
}
