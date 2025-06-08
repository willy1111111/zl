import 'package:flutter/material.dart';

import '../../../core/app_export.dart';
import '../../../widgets/custom_image_view.dart';
import '../models/task_item_model.dart';

class TaskItemWidget extends StatelessWidget {
  final TaskItemModel task;
  final VoidCallback? onButtonPressed;

  const TaskItemWidget({
    Key? key,
    required this.task,
    this.onButtonPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
            imagePath: task.iconPath?.value ?? '',
            width: 40.h,
            height: 40.h,
          ),
          SizedBox(width: 12.h),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 8.h),
                Text(
                  task.title?.value ?? '',
                  style: TextStyleHelper.instance.body14Bold2
                      .copyWith(height: 1.21),
                ),
                SizedBox(height: 4.h),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: task.description?.value ?? '',
                        style: TextStyleHelper.instance.body13Bold
                            .copyWith(height: 1.08),
                      ),
                      TextSpan(
                        text: task.rewardText?.value ?? '',
                        style: TextStyleHelper.instance.body13Bold.copyWith(
                            color: appTheme.colorFFFFC6, height: 1.08),
                      ),
                    ],
                  ),
                ),
                if (task.progressText?.value.isNotEmpty == true) ...[
                  SizedBox(height: 4.h),
                  Text(
                    task.progressText?.value ?? '',
                    style:
                        TextStyleHelper.instance.body12.copyWith(height: 1.17),
                  ),
                ],
              ],
            ),
          ),
          SizedBox(width: 12.h),
          GestureDetector(
            onTap: onButtonPressed,
            child: Container(
              constraints: BoxConstraints(
                minWidth: 77.h,
                minHeight: 36.h,
              ),
              decoration: BoxDecoration(
                gradient: _getButtonGradient(task.buttonType?.value),
                borderRadius: BorderRadius.circular(6.h),
              ),
              padding: EdgeInsets.symmetric(horizontal: 12.h, vertical: 8.h),
              child: Center(
                child: Text(
                  task.buttonText?.value ?? '',
                  style: TextStyleHelper.instance.body14Bold2
                      .copyWith(height: 1.21),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  LinearGradient _getButtonGradient(TaskButtonType? buttonType) {
    switch (buttonType) {
      case TaskButtonType.orange:
        return LinearGradient(
          colors: [Color(0xFFFFBF00), Color(0xFFFF7A00)],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        );
      case TaskButtonType.green:
      default:
        return LinearGradient(
          colors: [Color(0xFF76CD00), Color(0xFF478A03)],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        );
    }
  }
}
