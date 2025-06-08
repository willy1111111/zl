import 'package:flutter/material.dart';

import '../../../core/app_export.dart';
import '../../../widgets/custom_image_view.dart';
import '../models/task_item_model.dart';

class TaskCardWidget extends StatelessWidget {
  final TaskItemModel taskItem;
  final VoidCallback? onButtonPressed;

  const TaskCardWidget({
    Key? key,
    required this.taskItem,
    this.onButtonPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: appTheme.colorFF2528,
        borderRadius: BorderRadius.circular(8.h),
        boxShadow: [
          BoxShadow(
            color: appTheme.color408888,
            blurRadius: 4.h,
            offset: Offset(0, 4.h),
          ),
        ],
      ),
      padding: EdgeInsets.all(12.h),
      child: Row(
        crossAxisAlignment: _isMultiLineTask()
            ? CrossAxisAlignment.start
            : CrossAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: taskItem.icon?.value ?? '',
            width: 40.h,
            height: 40.h,
          ),
          SizedBox(width: 12.h),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (_isMultiLineTask()) SizedBox(height: 8.h),
                Text(
                  taskItem.title?.value ?? '',
                  style: TextStyleHelper.instance.body14BoldArial.copyWith(
                      color: appTheme.whiteCustom,
                      height: _isMultiLineTask() ? 1.14 : null),
                ),
                if (_isMultiLineTask()) SizedBox(height: 8.h),
                RichText(
                  text: TextSpan(
                    style: TextStyleHelper.instance.body13BoldArial,
                    children: [
                      TextSpan(
                        text: taskItem.description?.value ?? '',
                        style: TextStyleHelper.instance.textStyle16
                            .copyWith(color: appTheme.colorFF8089),
                      ),
                      TextSpan(
                        text: taskItem.rewardText?.value ?? '',
                        style: TextStyleHelper.instance.textStyle16
                            .copyWith(color: appTheme.colorFFFFC6),
                      ),
                    ],
                  ),
                ),
                if (taskItem.progressText?.value.isNotEmpty == true) ...[
                  SizedBox(height: 4.h),
                  Text(
                    taskItem.progressText?.value ?? '',
                    style: TextStyleHelper.instance.body12Arial,
                  ),
                ],
              ],
            ),
          ),
          SizedBox(width: 12.h),
          GestureDetector(
            onTap: onButtonPressed,
            child: Container(
              decoration: BoxDecoration(
                gradient: _getButtonGradient(),
                borderRadius: BorderRadius.circular(6.h),
              ),
              padding: EdgeInsets.symmetric(horizontal: 12.h, vertical: 8.h),
              child: Text(
                taskItem.buttonText?.value ?? 'View',
                style: TextStyleHelper.instance.body14BoldArial
                    .copyWith(color: appTheme.whiteCustom),
              ),
            ),
          ),
        ],
      ),
    );
  }

  bool _isMultiLineTask() {
    String title = taskItem.title?.value ?? '';
    return title == 'Fixed Payment Method Deposit' ||
        title == 'Registration successful' ||
        title == 'Money Rain';
  }

  LinearGradient _getButtonGradient() {
    TaskButtonType buttonType =
        taskItem.buttonType?.value ?? TaskButtonType.view;

    switch (buttonType) {
      case TaskButtonType.claim:
        return LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Color(0xFFFFBF00), Color(0xFFFF7A00)],
        );
      case TaskButtonType.deposit:
      case TaskButtonType.view:
      default:
        return LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Color(0xFF76CD00), Color(0xFF478A03)],
        );
    }
  }
}
