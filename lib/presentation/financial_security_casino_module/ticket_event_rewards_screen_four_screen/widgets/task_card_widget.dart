import 'package:flutter/material.dart';

import '../../../core/app_export.dart';
import '../../../widgets/custom_image_view.dart';
import '../models/task_card_model.dart';

class TaskCardWidget extends StatelessWidget {
  final TaskCardModel taskModel;
  final VoidCallback? onButtonTap;

  const TaskCardWidget({
    Key? key,
    required this.taskModel,
    this.onButtonTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Container(
        width: double.infinity,
        height: taskModel.height?.value.toDouble() ?? 82.h,
        decoration: BoxDecoration(
          color: appTheme.colorFF2528,
          borderRadius: BorderRadius.circular(8.h),
          boxShadow: [
            BoxShadow(
              color: appTheme.color888888,
              offset: Offset(0, 4.h),
              blurRadius: 4.h,
            ),
          ],
        ),
        padding: EdgeInsets.all(12.h),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomImageView(
              imagePath: taskModel.icon?.value ?? '',
              width: 40.h,
              height: 40.h,
            ),
            SizedBox(width: 12.h),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    taskModel.title?.value ?? '',
                    style: TextStyleHelper.instance.body14BoldArial
                        .copyWith(color: appTheme.whiteCustom),
                  ),
                  SizedBox(height: 4.h),
                  RichText(
                    text: TextSpan(
                      style: TextStyleHelper.instance.body13BoldArial,
                      children: [
                        TextSpan(
                          text: taskModel.description?.value ?? '',
                          style: TextStyleHelper.instance.textStyle16
                              .copyWith(color: appTheme.colorFF8089),
                        ),
                        TextSpan(
                          text: taskModel.reward?.value ?? '',
                          style: TextStyleHelper.instance.textStyle16
                              .copyWith(color: appTheme.colorFFFFC6),
                        ),
                      ],
                    ),
                  ),
                  if (taskModel.progressText?.value.isNotEmpty == true) ...[
                    SizedBox(height: 4.h),
                    Text(
                      taskModel.progressText?.value ?? '',
                      style: TextStyleHelper.instance.body12Arial,
                    ),
                  ],
                ],
              ),
            ),
            SizedBox(width: 12.h),
            GestureDetector(
              onTap: onButtonTap,
              child: Container(
                width: 77.h,
                height: 36.h,
                decoration: BoxDecoration(
                  gradient: _getButtonGradient(),
                  borderRadius: BorderRadius.circular(6.h),
                ),
                child: Center(
                  child: Text(
                    taskModel.buttonText?.value ?? '',
                    style: TextStyleHelper.instance.body14BoldArial
                        .copyWith(color: appTheme.whiteCustom),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  LinearGradient _getButtonGradient() {
    switch (taskModel.buttonType?.value) {
      case TaskButtonType.orange:
        return LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Color(0xFFFFBF00), Color(0xFFFF7A00)],
        );
      case TaskButtonType.green:
      default:
        return LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Color(0xFF76CD00), Color(0xFF478A03)],
        );
    }
  }
}
