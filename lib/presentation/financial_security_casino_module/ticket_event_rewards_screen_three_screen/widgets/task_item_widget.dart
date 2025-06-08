import 'package:flutter/material.dart';

import '../../../core/app_export.dart';
import '../../../widgets/custom_button.dart';
import '../../../widgets/custom_image_view.dart';
import '../controller/ticket_event_rewards_screen_three_controller.dart';
import '../models/task_item_model.dart';

class TaskItemWidget extends StatelessWidget {
  final TaskItemModel taskModel;

  TaskItemWidget({Key? key, required this.taskModel}) : super(key: key);

  var controller = Get.find<TicketEventRewardsScreenThreeController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(16.h),
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
        children: [
          CustomImageView(
            imagePath: taskModel.icon?.value ?? '',
            width: 40.h,
            height: 40.h,
          ),
          SizedBox(width: 16.h),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  taskModel.title?.value ?? '',
                  style: TextStyleHelper.instance.body14BoldArial
                      .copyWith(color: appTheme.whiteCustom),
                ),
                SizedBox(height: 8.h),
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
                        text: taskModel.rewardText?.value ?? '',
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
          SizedBox(width: 16.h),
          _buildTaskButton(),
        ],
      ),
    );
  }

  Widget _buildTaskButton() {
    Color buttonColor;
    switch (taskModel.buttonType?.value) {
      case TaskButtonType.claim:
        buttonColor = appTheme.colorFFFF7A;
        break;
      case TaskButtonType.deposit:
      case TaskButtonType.view:
      default:
        buttonColor = appTheme.colorFF76CD;
        break;
    }

    return CustomButton(
      text: taskModel.buttonText?.value ?? '',
      onPressed: () => controller.onTaskButtonPressed(taskModel),
      backgroundColor: buttonColor,
      height: 44.h,
      borderRadius: 6.h,
      padding: EdgeInsets.symmetric(horizontal: 12.h, vertical: 8.h),
    );
  }
}
