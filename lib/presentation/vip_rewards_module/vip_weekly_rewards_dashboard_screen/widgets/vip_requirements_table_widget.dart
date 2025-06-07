import 'package:flutter/material.dart';

import '../../../../core/app_export.dart';
import '../../../../widgets/custom_image_view.dart';

class VipRequirementsTableWidget extends StatelessWidget {
  VipRequirementsTableWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 345.h,
      decoration: BoxDecoration(
        color: appTheme.colorFF2528,
        borderRadius: BorderRadius.circular(10.h),
      ),
      padding: EdgeInsets.all(12.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Upgrade VIP task requirements',
            style: TextStyleHelper.instance.title16Bold
                .copyWith(color: appTheme.whiteCustom),
          ),
          SizedBox(height: 16.h),
          _buildTable(),
          SizedBox(height: 16.h),
          _buildNavigationArrows(),
        ],
      ),
    );
  }

  Widget _buildTable() {
    return Container(
      decoration: BoxDecoration(
        color: appTheme.colorFF1E20,
        borderRadius: BorderRadius.circular(6.h),
      ),
      child: Column(
        children: [
          _buildTableHeader(),
          _buildVipLevelIconsRow(),
          _buildDepositAmountRow(),
          _buildBetAmountRow(),
          _buildUpgradeBonusRow(),
          _buildWeeklySalaryRow(),
          _buildMonthlySalaryRow(),
          _buildBirthdayBonusRow(),
        ],
      ),
    );
  }

  Widget _buildTableHeader() {
    return Container(
      padding: EdgeInsets.all(8.h),
      decoration: BoxDecoration(
        border: Border(bottom: BorderSide(color: appTheme.colorFF282F)),
      ),
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: Text(
              'VIP level',
              style: TextStyleHelper.instance.body14Bold
                  .copyWith(color: appTheme.whiteCustom),
            ),
          ),
          Expanded(
            child: Text(
              'Deposit amount',
              style: TextStyleHelper.instance.body14Bold
                  .copyWith(color: appTheme.whiteCustom),
              textAlign: TextAlign.center,
            ),
          ),
          Expanded(
            child: Text(
              'Bet amount',
              style: TextStyleHelper.instance.body14Bold
                  .copyWith(color: appTheme.whiteCustom),
              textAlign: TextAlign.center,
            ),
          ),
          Expanded(
            child: Text(
              'Upgrade bonus',
              style: TextStyleHelper.instance.body14Bold
                  .copyWith(color: appTheme.whiteCustom),
              textAlign: TextAlign.center,
            ),
          ),
          Expanded(
            child: Text(
              'weekly salary',
              style: TextStyleHelper.instance.body14Bold
                  .copyWith(color: appTheme.whiteCustom),
              textAlign: TextAlign.center,
            ),
          ),
          Expanded(
            child: Text(
              'monthly salary',
              style: TextStyleHelper.instance.body14Bold
                  .copyWith(color: appTheme.whiteCustom),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildVipLevelIconsRow() {
    return Container(
      padding: EdgeInsets.all(8.h),
      decoration: BoxDecoration(
        border: Border(bottom: BorderSide(color: appTheme.colorFF282F)),
      ),
      child: Row(
        children: [
          Expanded(flex: 2, child: SizedBox()),
          ...List.generate(5, (index) {
            return Expanded(
              child: Column(
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.img684411655,
                    height: 16.h,
                    width: 16.h,
                  ),
                  SizedBox(height: 4.h),
                  Text(
                    'Lv.${index + 1}',
                    style: TextStyleHelper.instance.body12Bold
                        .copyWith(color: appTheme.colorFF8089),
                  ),
                ],
              ),
            );
          }),
        ],
      ),
    );
  }

  Widget _buildDepositAmountRow() {
    return _buildTableRow(
      'Deposit amount',
      ['500', '800', '1000', '1200', '200'],
    );
  }

  Widget _buildBetAmountRow() {
    return _buildTableRow(
      'Bet amount',
      ['300', '800', '1000', '1200', '200'],
    );
  }

  Widget _buildUpgradeBonusRow() {
    return _buildTableRow(
      'Upgrade bonus',
      ['500', '800', '1000', '1200', '200'],
    );
  }

  Widget _buildWeeklySalaryRow() {
    return _buildTableRow(
      'weekly salary',
      ['300', '800', '1000', '1200', '200'],
      isHighlighted: true,
    );
  }

  Widget _buildMonthlySalaryRow() {
    return _buildTableRow(
      'monthly salary',
      ['300', '800', '1000', '1200', '200'],
    );
  }

  Widget _buildBirthdayBonusRow() {
    return _buildTableRow(
      'Birthday bonus',
      ['300', '800', '1000', '1200', '200'],
      isLastRow: true,
    );
  }

  Widget _buildTableRow(String label, List<String> values,
      {bool isHighlighted = false, bool isLastRow = false}) {
    return Container(
      padding: EdgeInsets.all(8.h),
      decoration: BoxDecoration(
        border: isLastRow
            ? null
            : Border(bottom: BorderSide(color: appTheme.colorFF282F)),
      ),
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: Text(
              label,
              style: TextStyleHelper.instance.body14Bold
                  .copyWith(color: appTheme.whiteCustom),
            ),
          ),
          ...values
              .map((value) => Expanded(
                    child: Text(
                      value,
                      style: TextStyleHelper.instance.body12Bold.copyWith(
                          color: isHighlighted
                              ? appTheme.whiteCustom
                              : appTheme.colorFF8089),
                      textAlign: TextAlign.center,
                    ),
                  ))
              .toList(),
        ],
      ),
    );
  }

  Widget _buildNavigationArrows() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgGroup1224,
          height: 12.h,
          width: 32.h,
        ),
        CustomImageView(
          imagePath: ImageConstant.imgGroup1224,
          height: 12.h,
          width: 32.h,
        ),
      ],
    );
  }
}
