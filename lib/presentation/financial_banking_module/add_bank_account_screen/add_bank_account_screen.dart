import 'package:flutter/material.dart';

import '../../../../core/app_export.dart';
import '../../../../widgets/custom_app_bar.dart';
import '../../../../widgets/custom_button.dart';
import '../../../../widgets/custom_edit_text.dart';
import './controller/add_bank_account_controller.dart';
import './widgets/wallet_type_option_widget.dart';

class AddBankAccountScreen extends GetWidget<AddBankAccountController> {
  AddBankAccountScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.colorFF1E20,
      appBar: CustomAppBar(
        title: 'Add Bank Account',
        height: CustomAppBarHeight.standard,
        onBackPressed: () {
          Get.back();
        },
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(15.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20.h),

            // Payee Name Input
            CustomEditText(
              controller: controller.payeeNameController,
              placeholder: 'Please enter the full name of the payee',
              leadingIcon: ImageConstant.imgVectorBlueGray400,
              trailingIcon: ImageConstant.imgGroup563,
              width: 345.h,
              onChanged: (value) {
                controller.updatePayeeName(value);
              },
              onTrailingTap: () {
                controller.onEditPayeeName();
              },
            ),

            SizedBox(height: 24.h),

            // E-Wallet Type Section
            Text(
              'E-wallet type',
              style: TextStyleHelper.instance.title16Bold,
            ),

            SizedBox(height: 16.h),

            // Wallet Type Options Grid
            Obx(() => GridView.count(
                  crossAxisCount: 2,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  crossAxisSpacing: 12.h,
                  mainAxisSpacing: 12.h,
                  childAspectRatio: 2.65,
                  children: List.generate(
                    controller.walletTypes.length,
                    (index) => WalletTypeOptionWidget(
                      walletType: controller.walletTypes[index],
                      isSelected:
                          controller.selectedWalletTypeIndex.value == index,
                      onTap: () => controller.selectWalletType(index),
                    ),
                  ),
                )),

            SizedBox(height: 24.h),

            // PIX Key Input
            CustomEditText(
              controller: controller.pixKeyController,
              placeholder: 'Chave do PIX-CPF',
              leadingIcon: ImageConstant.img1BlueGray40017x17,
              width: 345.h,
              onChanged: (value) {
                controller.updatePixKey(value);
              },
            ),

            SizedBox(height: 24.h),

            // Transaction Password Input
            CustomEditText(
              controller: controller.transactionPasswordController,
              placeholder: 'Set transaction password',
              leadingIcon: ImageConstant.imgVectorBlueGray40017x14,
              trailingIcon: ImageConstant.img3,
              isPassword: true,
              width: 345.h,
              onChanged: (value) {
                controller.updateTransactionPassword(value);
              },
              onTrailingTap: () {
                controller.togglePasswordVisibility();
              },
            ),

            SizedBox(height: 8.h),

            // Error Message
            Obx(() => controller.showPasswordError.value
                ? Padding(
                    padding: EdgeInsets.only(left: 4.h),
                    child: Text(
                      'Please set up your transaction password',
                      style: TextStyleHelper.instance.body12Bold
                          .copyWith(color: appTheme.colorFFF652),
                    ),
                  )
                : SizedBox.shrink()),

            SizedBox(height: 32.h),

            // Submit Button
            Center(
              child: CustomButton(
                text: 'Submit',
                variant: CustomButtonVariant.gradient,
                width: 322.h,
                onPressed: () {
                  controller.onSubmitPressed();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
