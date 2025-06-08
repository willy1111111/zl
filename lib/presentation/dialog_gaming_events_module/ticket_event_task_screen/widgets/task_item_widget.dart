import 'package:flutter/material.dart';

import '../../../core/app_export.dart';
import '../../../widgets/custom_button.dart';
import '../models/task_item_model.dart';

class TaskItemWidget extends StatelessWidget {
  final TaskItemModel taskItem;
  final VoidCallback? onButtonPressed;

  TaskItemWidget({
    Key? key,
    required this.taskItem,
    this.onButtonPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 335.h,
      padding: EdgeInsets.all(15.h),
      decoration: BoxDecoration(
        color: appTheme.color99A0B0,
        borderRadius: BorderRadius.circular(8.h),
        boxShadow: [
          BoxShadow(
            color: appTheme.colorFF8888,
            blurRadius: 30,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Task header with button
          Row(
            children: [
              Expanded(
                child: _buildTaskContent(),
              ),
              SizedBox(width: 12.h),
              _buildActionButton(),
            ],
          ),

          // Progress section for progress and complex tasks
          if (taskItem.taskType?.value == TaskType.progress ||
              taskItem.taskType?.value == TaskType.complex)
            _buildProgressSection(),
        ],
      ),
    );
  }

  Widget _buildTaskContent() {
    switch (taskItem.taskType?.value) {
      case TaskType.simple:
        return Text(
          taskItem.title?.value ?? '',
          style: TextStyleHelper.instance.body14Arial.copyWith(height: 1.21),
        );

      case TaskType.progress:
        return RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: taskItem.title?.value ?? '',
                style:
                    TextStyleHelper.instance.body14Arial.copyWith(height: 1.21),
              ),
              if (taskItem.highlightText?.value != null)
                TextSpan(
                  text: taskItem.highlightText?.value ?? '',
                  style: TextStyleHelper.instance.body14Arial
                      .copyWith(color: appTheme.colorFF87EC, height: 1.21),
                ),
            ],
          ),
        );

      case TaskType.complex:
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (taskItem.currentBet?.value != null)
              Padding(
                padding: EdgeInsets.only(bottom: 8.h),
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: taskItem.taskType?.value == TaskType.complex &&
                                taskItem.title?.value == 'Current Valid Bet: '
                            ? 'Current Valid Bet: '
                            : 'Successfully Registers ≥ ',
                        style: TextStyleHelper.instance.body14BoldArial2
                            .copyWith(
                                color: appTheme.whiteCustom, height: 1.21),
                      ),
                      TextSpan(
                        text: taskItem.currentBet?.value ?? '',
                        style: TextStyleHelper.instance.body14BoldArial2
                            .copyWith(
                                color: appTheme.colorFF87EC, height: 1.21),
                      ),
                    ],
                  ),
                ),
              ),
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: taskItem.description?.value ?? '',
                    style: TextStyleHelper.instance.body14Arial
                        .copyWith(height: 1.14),
                  ),
                  if (taskItem.highlightText?.value != null)
                    TextSpan(
                      text: taskItem.highlightText?.value ?? '',
                      style: TextStyleHelper.instance.body14Arial
                          .copyWith(color: appTheme.colorFF87EC, height: 1.14),
                    ),
                ],
              ),
            ),
          ],
        );

      default:
        return SizedBox.shrink();
    }
  }

  Widget _buildActionButton() {
    CustomButtonVariant variant;
    switch (taskItem.buttonVariant?.value) {
      case TaskButtonVariant.gold:
        variant = CustomButtonVariant.orange;
        break;
      case TaskButtonVariant.dark:
        variant = CustomButtonVariant.dark;
        break;
      default:
        variant = CustomButtonVariant.orange;
        break;
    }

    return CustomButton(
      text: taskItem.buttonText?.value ?? '',
      variant: variant,
      width: 77.h,
      height: 36.h,
      borderRadius: 6.h,
      onPressed: onButtonPressed,
    );
  }

  Widget _buildProgressSection() {
    return Column(
      children: [
        SizedBox(height: 10.h),

        // Progress bar with percentage
        Row(
          children: [
            Expanded(
              child: Container(
                height: 12.h,
                decoration: BoxDecoration(
                  color: appTheme.color993D2C,
                  borderRadius: BorderRadius.circular(6.h),
                ),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    width: 305.h * (taskItem.progressValue?.value ?? 0.0),
                    height: 12.h,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [Color(0xFFFFF80E), Color(0xFFFF7A00)],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      ),
                      borderRadius: BorderRadius.circular(6.h),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(width: 8.h),
            Text(
              taskItem.progressPercent?.value ?? '0%',
              style: TextStyleHelper.instance.body12BoldArial2,
            ),
          ],
        ),

        SizedBox(height: 8.h),

        // Progress count
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            taskItem.progressCount?.value ?? '',
            style: TextStyleHelper.instance.body14BoldArial2
                .copyWith(color: appTheme.whiteCustom, height: 1.21),
          ),
        ),
      ],
    );
  }
}
