import 'package:flutter/material.dart';

import '../../../core/app_export.dart';
import '../../../widgets/custom_image_view.dart';
import '../controller/ticket_event_rewards_screen_two_controller.dart';
import '../models/task_item_model.dart';

class TaskItemWidget extends StatelessWidget {
  final TaskItemModel taskModel;

  const TaskItemWidget({
    Key? key,
    required this.taskModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var controller = Get.find<TicketEventRewardsScreenTwoController>();

    return Container(
      margin: EdgeInsets.only(bottom: 16.h),
      padding: EdgeInsets.all(12.h),
      decoration: BoxDecoration(
        color: appTheme.colorFF2528,
        borderRadius: BorderRadius.circular(8.h),
        boxShadow: [
          BoxShadow(
            color: appTheme.color888888,
            blurRadius: 4.h,
            offset: Offset(0, 4.h),
          ),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Obx(() => CustomImageView(
                imagePath: taskModel.icon?.value ?? '',
                width: 40.h,
                height: 40.h,
              )),
          SizedBox(width: 12.h),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Obx(() => Text(
                      taskModel.title?.value ?? '',
                      style: TextStyleHelper.instance.body14Bold2,
                    )),
                SizedBox(height: 4.h),
                Obx(() => RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: taskModel.description?.value ?? '',
                            style: TextStyleHelper.instance.body13Bold,
                          ),
                          TextSpan(
                            text: taskModel.reward?.value ?? '',
                            style: TextStyleHelper.instance.body13Bold
                                .copyWith(color: appTheme.colorFFFFC6),
                          ),
                        ],
                      ),
                    )),
                if (taskModel.progress?.value.isNotEmpty == true) ...[
                  SizedBox(height: 4.h),
                  Obx(() => Text(
                        taskModel.progress?.value ?? '',
                        style: TextStyleHelper.instance.body12,
                      )),
                ],
              ],
            ),
          ),
          SizedBox(width: 8.h),
          GestureDetector(
            onTap: () => controller.onTaskButtonPressed(taskModel),
            child: Obx(() => Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 12.h, vertical: 8.h),
                  decoration: BoxDecoration(
                    gradient: _getButtonGradient(taskModel.buttonType?.value),
                    borderRadius: BorderRadius.circular(6.h),
                  ),
                  child: Text(
                    taskModel.buttonText?.value ?? '',
                    style: TextStyleHelper.instance.body14Bold2,
                  ),
                )),
          ),
        ],
      ),
    );
  }

  Gradient _getButtonGradient(TaskButtonType? buttonType) {
    switch (buttonType) {
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
