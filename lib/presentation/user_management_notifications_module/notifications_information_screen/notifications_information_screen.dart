import 'package:flutter/material.dart';

import '../../../../core/app_export.dart';
import '../../../../widgets/custom_app_bar.dart';
import './controller/notifications_information_controller.dart';

class NotificationsInformationScreen
    extends GetWidget<NotificationsInformationController> {
  NotificationsInformationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.colorFF1E20,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(86.h),
        child: CustomAppBar(
          title: 'Notifications',
          balance: '₱1980.00',
          showBalance: true,
          onBackPressed: () => Get.back(),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.h),
        child: Column(
          children: [
            SizedBox(height: 16.h),
            Obx(() => Container(
                  width: 345.h,
                  decoration: BoxDecoration(
                    color: appTheme.colorFF2528,
                    borderRadius: BorderRadius.circular(8.h),
                  ),
                  padding: EdgeInsets.all(15.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Text(
                              controller
                                      .notificationModel.value?.title?.value ??
                                  '',
                              style: TextStyleHelper.instance.title16BoldArial,
                            ),
                          ),
                          SizedBox(width: 10.h),
                          Text(
                            controller.notificationModel.value?.date?.value ??
                                '',
                            style: TextStyleHelper.instance.body12BoldArial,
                          ),
                        ],
                      ),
                      SizedBox(height: 19.h),
                      Container(
                        width: 315.h,
                        height: 1.h,
                        color: appTheme.colorFF282F,
                      ),
                      SizedBox(height: 11.h),
                      Container(
                        width: 313.h,
                        child: Text(
                          controller.notificationModel.value?.content?.value ??
                              '',
                          style: TextStyleHelper.instance.body14BoldArial
                              .copyWith(height: 1.14),
                        ),
                      ),
                    ],
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
