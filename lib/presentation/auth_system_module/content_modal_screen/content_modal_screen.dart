import 'package:flutter/material.dart';
import '../../../../core/app_export.dart';
import '../../../../widgets/custom_image_view.dart';
import 'controller/content_modal_controller.dart';

class ContentModalScreen extends GetWidget<ContentModalController> {
  const ContentModalScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.blackCustom.withAlpha(128),
      body: Center(
        child: Stack(
          children: [
            // Modal Content
            Container(
              width: 287.h,
              height: 529.h,
              decoration: BoxDecoration(
                color: appTheme.colorFF1E20,
                borderRadius: BorderRadius.circular(12.h),
              ),
              child: Stack(
                children: [
                  // Content Area
                  Positioned(
                    left: 9.h,
                    top: 13.h,
                    child: Container(
                      width: 270.h,
                      height: 456.h,
                      decoration: BoxDecoration(
                        color: appTheme.colorFF2528,
                        borderRadius: BorderRadius.circular(12.h),
                      ),
                      padding: EdgeInsets.all(9.h),
                      child: SingleChildScrollView(
                        child: Obx(() => Text(
                              controller.contentModalModel.value.contentText
                                      ?.value ??
                                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean euismod bibendum laoreet. Proin gravida dolor sit amet lacus accumsan et viverra justo commodo. Proin sodales pulvinar sic tempor. Sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nam fermentum, nulla luctus pharetra vulputate, felis tellus mollis orci, sed rhoncus pronin sapien nunc accuan eget.\n\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean euismod bibendum laoreet. Proin gravida dolor sit amet lacus accumsan et viverra justo commodo.\n\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean euismod bibendum laoreet. Proin gravida dolor sit amet lacus accumsan et viverra justo commodo. Proin sodales pulvinar sic tempor. Sociis natoque penatibus et magnis dis parturient montes, nascetur',
                              style: TextStyleHelper.instance.body14BoldArial2
                                  .copyWith(
                                      color: appTheme.colorFF8089,
                                      height: 1.14),
                            )),
                      ),
                    ),
                  ),

                  // Pagination Controls
                  Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: Container(
                      height: 40.h,
                      child: Stack(
                        children: [
                          // Previous Button
                          Positioned(
                            left: 0,
                            child: GestureDetector(
                              onTap: () => controller.previousPage(),
                              child: Container(
                                width: 100.h,
                                height: 40.h,
                                decoration: BoxDecoration(
                                  color: appTheme.colorFF2528,
                                  borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(18.h),
                                    bottomLeft: Radius.circular(12.h),
                                  ),
                                ),
                                padding: EdgeInsets.only(left: 13.h),
                                child: Row(
                                  children: [
                                    CustomImageView(
                                      imagePath:
                                          ImageConstant.imgStrokeWhiteA70013x7,
                                      width: 7.h,
                                      height: 13.h,
                                    ),
                                    SizedBox(width: 8.h),
                                    Text(
                                      'Previous',
                                      style: TextStyleHelper
                                          .instance.body14BoldArial2
                                          .copyWith(
                                              color: appTheme.colorFFFFFF),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),

                          // Page Indicator
                          Positioned(
                            left: 131.h,
                            top: 12.h,
                            child: Obx(() => Text(
                                  '${controller.contentModalModel.value.currentPage?.value ?? 2}/${controller.contentModalModel.value.totalPages?.value ?? 8}',
                                  style: TextStyleHelper
                                      .instance.body14BoldArial2
                                      .copyWith(color: appTheme.colorFFFFFF),
                                )),
                          ),

                          // Next Button
                          Positioned(
                            right: 0,
                            child: GestureDetector(
                              onTap: () => controller.nextPage(),
                              child: Container(
                                width: 100.h,
                                height: 40.h,
                                decoration: BoxDecoration(
                                  color: appTheme.colorFF2528,
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(18.h),
                                    bottomRight: Radius.circular(12.h),
                                  ),
                                ),
                                padding: EdgeInsets.symmetric(horizontal: 16.h),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Next',
                                      style: TextStyleHelper
                                          .instance.body14BoldArial2
                                          .copyWith(
                                              color: appTheme.colorFFFFFF),
                                    ),
                                    CustomImageView(
                                      imagePath:
                                          ImageConstant.imgStrokeWhiteA700,
                                      width: 7.h,
                                      height: 13.h,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),

            // Close Button
            Positioned(
              top: -50.h,
              right: 10.h,
              child: GestureDetector(
                onTap: () => controller.closeModal(),
                child: Container(
                  width: 40.h,
                  height: 40.h,
                  decoration: BoxDecoration(
                    color: appTheme.whiteCustom.withAlpha(26),
                    borderRadius: BorderRadius.circular(20.h),
                  ),
                  child: Center(
                    child: Text(
                      '×',
                      style: TextStyleHelper.instance.title20Bold
                          .copyWith(color: appTheme.colorFFFFFF),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
