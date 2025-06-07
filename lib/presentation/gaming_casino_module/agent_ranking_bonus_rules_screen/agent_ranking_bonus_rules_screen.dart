import 'package:flutter/material.dart';

import '../../../../core/app_export.dart';
import '../../../../widgets/custom_image_view.dart';
import './controller/agent_ranking_bonus_rules_controller.dart';
import './models/ranking_item_model.dart';

class AgentRankingBonusRulesScreen
    extends GetWidget<AgentRankingBonusRulesController> {
  AgentRankingBonusRulesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.blackCustom.withAlpha(153),
      body: Stack(
        children: [
          // Background overlay - tap to close
          GestureDetector(
            onTap: () => Get.back(),
            child: Container(
              width: double.infinity,
              height: double.infinity,
              color: appTheme.transparentCustom,
            ),
          ),
          // Modal container
          Center(
            child: Container(
              width: double.infinity,
              margin: EdgeInsets.symmetric(horizontal: 16.h),
              constraints: BoxConstraints(
                maxWidth: 400.h,
                maxHeight: MediaQuery.of(context).size.height - 100.h,
              ),
              child: Material(
                color: appTheme.transparentCustom,
                child: Container(
                  decoration: BoxDecoration(
                    color: appTheme.whiteCustom,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(22.h),
                      topRight: Radius.circular(22.h),
                    ),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      _buildHeader(),
                      Flexible(
                        child: SingleChildScrollView(
                          padding: EdgeInsets.all(20.h),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              _buildAgentRankingBonusSection(),
                              SizedBox(height: 24.h),
                              _buildTermsAndConditionsSection(),
                              SizedBox(height: 24.h),
                              _buildQualifiedUsersSection(),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildHeader() {
    return Container(
      padding: EdgeInsets.all(20.h),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: appTheme.colorFFE5E7,
            width: 1.h,
          ),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Rule',
            style: TextStyleHelper.instance.title20Bold,
          ),
          GestureDetector(
            onTap: () => Get.back(),
            child: CustomImageView(
              imagePath: ImageConstant.imgGroup2131329219BlueGray10001,
              height: 28.h,
              width: 28.h,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildAgentRankingBonusSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Agent Ranking Bonus：',
          style: TextStyleHelper.instance.body14Bold
              .copyWith(color: appTheme.colorFF090F),
        ),
        SizedBox(height: 16.h),
        _buildRankingTable(),
      ],
    );
  }

  Widget _buildRankingTable() {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: appTheme.colorFFE4E6,
          width: 1.h,
        ),
      ),
      child: Column(
        children: [
          _buildTableHeader(),
          Obx(() => Column(
                children: controller.rankingItems
                    .map((item) => _buildTableRow(item))
                    .toList(),
              )),
        ],
      ),
    );
  }

  Widget _buildTableHeader() {
    return Row(
      children: [
        Container(
          width: 64.h,
          height: 36.h,
          decoration: BoxDecoration(
            color: appTheme.colorFF61AC,
            border: Border.all(
              color: appTheme.colorFFE4E6,
              width: 1.h,
            ),
          ),
          child: Center(
            child: Text(
              'Rank',
              style: TextStyleHelper.instance.body12
                  .copyWith(color: appTheme.whiteCustom),
            ),
          ),
        ),
        Expanded(
          child: Container(
            height: 36.h,
            decoration: BoxDecoration(
              color: appTheme.colorFF61AC,
              border: Border.all(
                color: appTheme.colorFFE4E6,
                width: 1.h,
              ),
            ),
            child: Center(
              child: Text(
                'bonus',
                style: TextStyleHelper.instance.body12
                    .copyWith(color: appTheme.whiteCustom),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildTableRow(RankingItemModel item) {
    return Row(
      children: [
        Container(
          width: 64.h,
          height: 36.h,
          decoration: BoxDecoration(
            color: appTheme.colorFFF0FF,
            border: Border.all(
              color: appTheme.colorFFE4E6,
              width: 1.h,
            ),
          ),
          child: Center(
            child: item.hasIcon?.value ?? false
                ? CustomImageView(
                    imagePath: item.iconPath?.value ?? '',
                    height: 26.h,
                    width: 26.h,
                  )
                : Text(
                    item.rank?.value ?? '',
                    style: TextStyleHelper.instance.body12
                        .copyWith(color: appTheme.blackCustom),
                  ),
          ),
        ),
        Expanded(
          child: Container(
            height: 36.h,
            decoration: BoxDecoration(
              color: appTheme.colorFFF0FF,
              border: Border.all(
                color: appTheme.colorFFE4E6,
                width: 1.h,
              ),
            ),
            child: Center(
              child: Text(
                item.bonus?.value ?? '',
                style: TextStyleHelper.instance.body12
                    .copyWith(color: appTheme.blackCustom),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildTermsAndConditionsSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Terms and conditions:',
          style: TextStyleHelper.instance.body14Bold
              .copyWith(color: appTheme.colorFF090F),
        ),
        SizedBox(height: 16.h),
        Obx(() => Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: controller.termsAndConditions
                  .map(
                    (term) => Padding(
                      padding: EdgeInsets.only(bottom: 8.h),
                      child: Text(
                        term.value,
                        style: TextStyleHelper.instance.body14
                            .copyWith(color: appTheme.colorFF3333, height: 1.2),
                      ),
                    ),
                  )
                  .toList(),
            )),
      ],
    );
  }

  Widget _buildQualifiedUsersSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Qualified users:',
          style: TextStyleHelper.instance.body14Bold
              .copyWith(color: appTheme.colorFF090F),
        ),
        SizedBox(height: 16.h),
        RichText(
          text: TextSpan(
            style: TextStyleHelper.instance.body14
                .copyWith(color: appTheme.colorFF3333, height: 1.2),
            children: [
              TextSpan(text: 'The minimum deposit amount for invitees is '),
              TextSpan(
                text: '₱200',
                style: TextStyleHelper.instance.textStyle8,
              ),
              TextSpan(text: ', and the effective betting amount is '),
              TextSpan(
                text: '₱1000',
                style: TextStyleHelper.instance.textStyle8,
              ),
              TextSpan(
                  text:
                      ', The invitees need to complete the verification of mobile phone number.'),
            ],
          ),
        ),
        SizedBox(height: 16.h),
        Text(
          'Remark:',
          style: TextStyleHelper.instance.body14Bold
              .copyWith(color: appTheme.colorFF3333),
        ),
        SizedBox(height: 8.h),
        RichText(
          text: TextSpan(
            style: TextStyleHelper.instance.body14
                .copyWith(color: appTheme.colorFF3333, height: 1.2),
            children: [
              TextSpan(
                  text:
                      'Once the number of qualified users from the same IP address reaches the limit of '),
              TextSpan(
                text: '5,',
                style: TextStyleHelper.instance.textStyle8,
              ),
              TextSpan(
                  text:
                      ' subsequent users from the same IP will no longer be counted as qualified users'),
            ],
          ),
        ),
      ],
    );
  }
}
