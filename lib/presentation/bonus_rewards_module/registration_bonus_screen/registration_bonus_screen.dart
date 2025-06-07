import 'package:flutter/material.dart';

import '../../core/app_export.dart';
import '../../widgets/custom_app_bar.dart';
import '../../widgets/custom_image_view.dart';
import '../../widgets/custom_tab_bar.dart';
import './controller/registration_bonus_controller.dart';
import './widgets/bonus_data_table_widget.dart';

class RegistrationBonusScreen extends StatelessWidget {
  RegistrationBonusScreen({Key? key}) : super(key: key);

  final RegistrationBonusController controller =
      Get.put(RegistrationBonusController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.colorFF1E20,
      body: SafeArea(
        child: Column(
          children: [
            // App Bar
            CustomAppBar(
              logoPath: ImageConstant.imgLogowj931,
              balance: '1980.00',
              currency: '₱',
              backgroundColor: appTheme.colorFF1B1C,
            ),

            // Tab Navigation
            CustomTabBar(
              tabItems: [
                CustomTabItem(
                  iconPath: ImageConstant.imgFrame,
                  label: 'invite',
                  routeName: '/invite',
                ),
                CustomTabItem(
                  iconPath: ImageConstant.imgFrameBlueGray40020x20,
                  label: 'Achievement',
                  routeName: '/achievement',
                ),
                CustomTabItem(
                  iconPath: ImageConstant.imgFrame20x20,
                  label: 'Teams',
                  routeName: '/teams',
                ),
                CustomTabItem(
                  iconPath: ImageConstant.imgFrameBlueGray400,
                  label: 'Incomes',
                  routeName: '/incomes',
                ),
                CustomTabItem(
                  iconPath: ImageConstant.imgGroup1321314646,
                  label: 'bonus',
                  routeName: '/bonus',
                ),
                CustomTabItem(
                  iconPath: ImageConstant.imgFrame1,
                  label: 'FAQ',
                  routeName: '/faq',
                ),
              ],
              selectedIndex: 4,
              onTabChanged: (index) => controller.onTabChanged(index),
              backgroundColor: appTheme.colorFF1012,
              activeTextColor: appTheme.whiteCustom,
              inactiveTextColor: appTheme.colorFF8089,
              activeIndicatorColor: appTheme.colorFF85D4,
            ),

            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    // Filter Section
                    _buildFilterSection(),

                    // Data Table
                    BonusDataTableWidget(),

                    SizedBox(height: 100.h),
                  ],
                ),
              ),
            ),

            // Total Registration Bonus Section
            _buildTotalBonusSection(),

            // Floating Action Button
            _buildFloatingInviteButton(),
          ],
        ),
      ),
    );
  }

  Widget _buildFilterSection() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 16.h),
      child: Row(
        children: [
          // Registration Bonus Dropdown
          Expanded(
            child: GestureDetector(
              onTap: () => controller.onRegistrationBonusDropdownTap(),
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 12.h, vertical: 12.h),
                decoration: BoxDecoration(
                  color: appTheme.colorFF2528,
                  borderRadius: BorderRadius.circular(6.h),
                  boxShadow: [
                    BoxShadow(
                      color: appTheme.blackCustom,
                      blurRadius: 4,
                      offset: Offset(0, 4),
                    ),
                  ],
                ),
                child: Row(
                  children: [
                    Text(
                      'Registration Bonus',
                      style: TextStyleHelper.instance.body13Bold,
                    ),
                    Spacer(),
                    CustomImageView(
                      imagePath: ImageConstant.imgPolygon1,
                      height: 11.h,
                      width: 13.h,
                    ),
                  ],
                ),
              ),
            ),
          ),

          SizedBox(width: 16.h),

          // Date Picker
          GestureDetector(
            onTap: () => controller.onDatePickerTap(),
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 12.h, vertical: 12.h),
              decoration: BoxDecoration(
                color: appTheme.colorFF2528,
                borderRadius: BorderRadius.circular(6.h),
                boxShadow: [
                  BoxShadow(
                    color: appTheme.blackCustom,
                    blurRadius: 4,
                    offset: Offset(0, 4),
                  ),
                ],
              ),
              child: Row(
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgVectorBlueGray400,
                    height: 17.h,
                    width: 16.h,
                  ),
                  SizedBox(width: 8.h),
                  Obx(() => Text(
                        controller.selectedDateRange.value,
                        style: TextStyleHelper.instance.body13Bold,
                      )),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTotalBonusSection() {
    return Container(
      width: 375.h,
      height: 74.h,
      padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 12.h),
      decoration: BoxDecoration(
        color: appTheme.colorFF2E32,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Total Registration Bonus:',
                style: TextStyleHelper.instance.body14Bold
                    .copyWith(color: appTheme.whiteCustom),
              ),
              SizedBox(height: 4.h),
              Obx(() => Text(
                    controller.totalRegistrationBonus.value,
                    style: TextStyleHelper.instance.title20Bold,
                  )),
            ],
          ),
          Row(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgFrame14627,
                height: 10.h,
                width: 10.h,
              ),
              SizedBox(width: 4.h),
              Obx(() => Text(
                    controller.totalUsersText.value,
                    style: TextStyleHelper.instance.body12Bold
                        .copyWith(color: appTheme.colorFF8089),
                  )),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildFloatingInviteButton() {
    return Positioned(
      bottom: 78.h,
      left: 0,
      right: 0,
      child: Center(
        child: GestureDetector(
          onTap: () => controller.onInviteButtonTap(),
          child: Container(
            width: 57.h,
            height: 56.h,
            decoration: BoxDecoration(
              color: appTheme.colorFF242A,
              borderRadius: BorderRadius.circular(28.h),
            ),
            child: Center(
              child: Container(
                width: 48.h,
                height: 46.h,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment(0.156, 0),
                    end: Alignment(1, 1),
                    colors: [
                      Color(0xFFADF835),
                      appTheme.colorFF83CF,
                      appTheme.colorFF3C7A,
                    ],
                  ),
                  borderRadius: BorderRadius.circular(23.h),
                  boxShadow: [
                    BoxShadow(
                      color: appTheme.colorFF6199,
                      blurRadius: 4,
                      offset: Offset(-1, -4),
                    ),
                  ],
                ),
                child: Stack(
                  children: [
                    Positioned(
                      top: 5.h,
                      left: 12.h,
                      child: CustomImageView(
                        imagePath: ImageConstant.imgVector,
                        height: 27.h,
                        width: 25.h,
                      ),
                    ),
                    Positioned(
                      bottom: 5.h,
                      left: 0,
                      child: CustomImageView(
                        imagePath: ImageConstant.imgSubtract,
                        height: 14.h,
                        width: 43.h,
                      ),
                    ),
                    Positioned(
                      bottom: 14.h,
                      right: 8.h,
                      child: Container(
                        width: 3.h,
                        height: 3.h,
                        decoration: BoxDecoration(
                          color: appTheme.whiteCustom,
                          borderRadius: BorderRadius.circular(1.h),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 5.h,
                      left: 0,
                      child: CustomImageView(
                        imagePath: ImageConstant.imgSubtract14x43,
                        height: 14.h,
                        width: 43.h,
                      ),
                    ),
                    Positioned(
                      bottom: 5.h,
                      left: 0,
                      child: CustomImageView(
                        imagePath: ImageConstant.img,
                        height: 14.h,
                        width: 43.h,
                      ),
                    ),
                    Positioned(
                      bottom: 1.h,
                      left: 3.h,
                      child: CustomImageView(
                        imagePath: ImageConstant.imgUnion,
                        height: 8.h,
                        width: 33.h,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
