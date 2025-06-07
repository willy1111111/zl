import 'package:flutter/material.dart';

import '../../../../core/app_export.dart';
import '../../../../widgets/custom_image_view.dart';
import '../controller/vip_weekly_salary_pending_controller.dart';

class VipRequirementsTableWidget extends StatelessWidget {
  const VipRequirementsTableWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var controller = Get.find<VipWeeklySalaryPendingController>();

    return Container(
      decoration: BoxDecoration(
        color: appTheme.colorFF2528,
        borderRadius: BorderRadius.circular(8.h),
      ),
      padding: EdgeInsets.all(16.h),
      child: Container(
        decoration: BoxDecoration(
          color: appTheme.colorFF1E20,
          borderRadius: BorderRadius.circular(6.h),
        ),
        padding: EdgeInsets.all(16.h),
        child: Column(
          children: [
            _buildTableHeader(),
            SizedBox(height: 16.h),
            _buildVipTable(controller),
          ],
        ),
      ),
    );
  }

  Widget _buildTableHeader() {
    return Container(
      width: 282.h,
      height: 39.h,
      child: Stack(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgRectangle568,
            height: 39.h,
            width: 282.h,
            fit: BoxFit.cover,
          ),
          Positioned(
            top: 12.h,
            left: 64.h,
            child: Text(
              'Upgrade VIP requirements',
              style: TextStyleHelper.instance.title16Bold
                  .copyWith(color: appTheme.whiteCustom),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildVipTable(VipWeeklySalaryPendingController controller) {
    return Container(
      decoration: BoxDecoration(
        color: appTheme.colorFF2527,
        borderRadius: BorderRadius.circular(6.h),
        border: Border.all(color: appTheme.colorFF1516),
      ),
      child: Column(
        children: [
          _buildTableHeaderRow(),
          _buildTableBody(controller),
        ],
      ),
    );
  }

  Widget _buildTableHeaderRow() {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xFF76cd00), Color(0xFF478a03)],
        ),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(6.h),
          topRight: Radius.circular(6.h),
        ),
      ),
      padding: EdgeInsets.symmetric(vertical: 12.h, horizontal: 8.h),
      child: Row(
        children: [
          SizedBox(
            width: 64.h,
            child: Text(
              'VIP level',
              textAlign: TextAlign.center,
              style: TextStyleHelper.instance.body12Black,
            ),
          ),
          _buildHeaderColumn(
            ImageConstant.imgGroup11886,
            'Deposit amount',
            9.h,
          ),
          _buildHeaderColumn(
            ImageConstant.img8411641,
            'Bet amount',
            5.h,
          ),
          _buildHeaderColumn(
            ImageConstant.img,
            'Upgrade bonus',
            7.h,
          ),
          _buildHeaderColumn(
            ImageConstant.imgBn01,
            'weekly cashback',
            7.h,
          ),
        ],
      ),
    );
  }

  Widget _buildHeaderColumn(String iconPath, String title, double iconHeight) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          border: Border(left: BorderSide(color: Color(0xFF315a007f))),
        ),
        padding: EdgeInsets.symmetric(horizontal: 8.h),
        child: Column(
          children: [
            CustomImageView(
              imagePath: iconPath,
              height: iconHeight,
              width: 20.h,
              fit: BoxFit.contain,
            ),
            SizedBox(height: 4.h),
            Text(
              title,
              textAlign: TextAlign.center,
              style: TextStyleHelper.instance.body12Bold
                  .copyWith(color: appTheme.whiteCustom),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTableBody(VipWeeklySalaryPendingController controller) {
    return Obx(() => Column(
          children: controller
              .vipWeeklySalaryPendingModelObj.value.vipRequirements.value!
              .map((requirement) => _buildTableRow(requirement))
              .toList(),
        ));
  }

  Widget _buildTableRow(requirement) {
    return Container(
      decoration: BoxDecoration(
        color: appTheme.colorFF2527,
        border: Border(top: BorderSide(color: appTheme.colorFF2527)),
      ),
      padding: EdgeInsets.symmetric(vertical: 12.h, horizontal: 8.h),
      child: Row(
        children: [
          SizedBox(
            width: 64.h,
            child: Row(
              children: [
                CustomImageView(
                  imagePath: requirement.iconPath?.value ?? '',
                  height: 16.h,
                  width: 16.h,
                ),
                SizedBox(width: 8.h),
                Text(
                  requirement.level?.value ?? '',
                  style: TextStyleHelper.instance.body12Bold
                      .copyWith(color: appTheme.colorFFE1E1),
                ),
              ],
            ),
          ),
          _buildTableCell(requirement.depositAmount?.value ?? ''),
          _buildTableCell(requirement.betAmount?.value ?? ''),
          _buildTableCell(requirement.upgradeBonus?.value ?? ''),
          _buildTableCell(requirement.weeklyCashback?.value ?? ''),
        ],
      ),
    );
  }

  Widget _buildTableCell(String value) {
    return Expanded(
      child: Text(
        value,
        textAlign: TextAlign.center,
        style: TextStyleHelper.instance.body12Bold
            .copyWith(color: appTheme.colorFF8089),
      ),
    );
  }
}
