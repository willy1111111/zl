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
    switch (taskItem.taskType) {
      case TaskType.simple:
        return _buildSimpleTask();
      case TaskType.withProgress:
        return _buildTaskWithProgress();
      case TaskType.withSubtitle:
        return _buildTaskWithSubtitle();
      default:
        return _buildSimpleTask();
    }
  }

  Widget _buildSimpleTask() {
    return Container(
      decoration: BoxDecoration(
        color: appTheme.color99A0B0,
        borderRadius: BorderRadius.circular(8.h),
      ),
      height: 60.h,
      padding: EdgeInsets.symmetric(horizontal: 15.h),
      child: Row(
        children: [
          Expanded(
            child: Text(
              taskItem.title?.value ?? '',
              style: TextStyleHelper.instance.body14,
            ),
          ),
          CustomButton(
            text: taskItem.buttonText?.value ?? '',
            variant: CustomButtonVariant.gold,
            width: 77.h,
            height: 36.h,
            onPressed: onButtonPressed,
          ),
        ],
      ),
    );
  }

  Widget _buildTaskWithProgress() {
    return Container(
      decoration: BoxDecoration(
        color: appTheme.color99A0B0,
        borderRadius: BorderRadius.circular(8.h),
      ),
      height: 90.h,
      padding: EdgeInsets.all(15.h),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: taskItem.title?.value ?? '',
                        style: TextStyleHelper.instance.body14,
                      ),
                      if (taskItem.highlightedText?.value != null)
                        TextSpan(
                          text: taskItem.highlightedText?.value ?? '',
                          style: TextStyleHelper.instance.body14
                              .copyWith(color: appTheme.colorFF87EC),
                        ),
                    ],
                  ),
                ),
              ),
              CustomButton(
                text: taskItem.buttonText?.value ?? '',
                variant: CustomButtonVariant.gold,
                width: 77.h,
                height: 36.h,
                onPressed: onButtonPressed,
              ),
            ],
          ),
          SizedBox(height: 11.h),
          Row(
            children: [
              Expanded(
                child: Container(
                  width: 305.h,
                  height: 12.h,
                  decoration: BoxDecoration(
                    color: appTheme.color993D2C,
                    borderRadius: BorderRadius.circular(6.h),
                  ),
                  child: Stack(
                    children: [
                      Container(
                        width: (taskItem.progressValue?.value ?? 0) * 3.05,
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
                    ],
                  ),
                ),
              ),
              SizedBox(width: 13.h),
              Text(
                taskItem.progressText?.value ?? '',
                style: TextStyleHelper.instance.body12Bold
                    .copyWith(color: appTheme.whiteCustom),
              ),
            ],
          ),
          SizedBox(height: 12.h),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              taskItem.statusText?.value ?? '',
              style: TextStyleHelper.instance.body14Bold,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTaskWithSubtitle() {
    return Container(
      decoration: BoxDecoration(
        color: appTheme.color99A0B0,
        borderRadius: BorderRadius.circular(8.h),
      ),
      height: 126.h,
      padding: EdgeInsets.all(15.h),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: taskItem.title?.value ?? '',
                            style: TextStyleHelper.instance.body14Bold,
                          ),
                          if (taskItem.highlightedText?.value != null)
                            TextSpan(
                              text: taskItem.highlightedText?.value ?? '',
                              style: TextStyleHelper.instance.body14Bold
                                  .copyWith(color: appTheme.colorFF87EC),
                            ),
                        ],
                      ),
                    ),
                    SizedBox(height: 6.h),
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: taskItem.subtitle?.value ?? '',
                            style: TextStyleHelper.instance.body14,
                          ),
                          if (taskItem.subtitleHighlight?.value != null)
                            TextSpan(
                              text: taskItem.subtitleHighlight?.value ?? '',
                              style: TextStyleHelper.instance.body14
                                  .copyWith(color: appTheme.colorFF87EC),
                            ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              CustomButton(
                text: taskItem.buttonText?.value ?? '',
                variant: CustomButtonVariant.gold,
                width: 77.h,
                height: 36.h,
                onPressed: onButtonPressed,
              ),
            ],
          ),
          SizedBox(height: 11.h),
          Row(
            children: [
              Expanded(
                child: Container(
                  width: 305.h,
                  height: 12.h,
                  decoration: BoxDecoration(
                    color: appTheme.color993D2C,
                    borderRadius: BorderRadius.circular(6.h),
                  ),
                  child: Stack(
                    children: [
                      Container(
                        width: (taskItem.progressValue?.value ?? 0) * 3.05,
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
                    ],
                  ),
                ),
              ),
              SizedBox(width: 13.h),
              Text(
                taskItem.progressText?.value ?? '',
                style: TextStyleHelper.instance.body12Bold
                    .copyWith(color: appTheme.whiteCustom),
              ),
            ],
          ),
          SizedBox(height: 12.h),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              taskItem.statusText?.value ?? '',
              style: TextStyleHelper.instance.body14Bold,
            ),
          ),
        ],
      ),
    );
  }
}
