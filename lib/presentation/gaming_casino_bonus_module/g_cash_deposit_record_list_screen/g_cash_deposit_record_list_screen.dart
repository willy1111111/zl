import 'package:flutter/material.dart';

import '../../core/app_export.dart';
import '../../widgets/custom_app_bar.dart';
import './controller/g_cash_deposit_record_list_controller.dart';
import './models/transaction_item_model.dart';
import './widgets/transaction_item_widget.dart';

class GCashDepositRecordListScreen
    extends GetWidget<GCashDepositRecordListController> {
  GCashDepositRecordListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.colorFF1E20,
      appBar: _buildAppBar(),
      body: _buildBody(),
    );
  }

  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      title: 'Deposit Record',
      height: 126,
      showFilters: true,
      showBackButton: true,
      onBackPressed: () {
        Get.back();
      },
    );
  }

  Widget _buildBody() {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.only(
        left: 15.h,
        top: 19.h,
        right: 15.h,
      ),
      child: Column(
        children: [
          _buildTransactionList(),
        ],
      ),
    );
  }

  Widget _buildTransactionList() {
    return Obx(() => Expanded(
          child: ListView.separated(
            physics: BouncingScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (context, index) {
              return SizedBox(height: 59.h);
            },
            itemCount: controller.transactionList.length,
            itemBuilder: (context, index) {
              TransactionItemModel model = controller.transactionList[index];
              return TransactionItemWidget(
                transactionItemModel: model,
                onTap: () {
                  controller.onTransactionItemTap(model);
                },
              );
            },
          ),
        ));
  }
}
