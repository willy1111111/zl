import 'package:flutter/material.dart';
import '../../../../core/app_export.dart';
import '../../../../widgets/custom_button.dart';
import '../../../../widgets/custom_image_view.dart';
import './controller/reconnection_dialog_controller.dart';

class ReconnectionDialogScreen extends StatelessWidget {
  ReconnectionDialogScreen({Key? key}) : super(key: key);

  final ReconnectionDialogController controller =
      Get.put(ReconnectionDialogController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black.withOpacity(0.6),
      body: Center(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 24.h),
          padding: EdgeInsets.all(24.h),
          decoration: BoxDecoration(
            color: appTheme.colorFF1E20,
            borderRadius: BorderRadius.circular(16.h),
            border: Border.all(color: appTheme.colorFF2C35, width: 2),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.3),
                blurRadius: 10,
                offset: Offset(0, 5),
              ),
            ],
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              _buildHeader(),
              SizedBox(height: 20.h),
              _buildConnectionStatus(),
              SizedBox(height: 24.h),
              _buildActionButtons(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return Column(
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgNetworkError,
          height: 60.h,
          width: 60.h,
        ),
        SizedBox(height: 12.h),
        Text(
          '网络连接异常',
          style: TextStyleHelper.instance.body18Bold.copyWith(
            color: appTheme.whiteA700,
          ),
        ),
      ],
    );
  }

  Widget _buildConnectionStatus() {
    return Obx(() => Column(
      children: [
        Text(
          controller.getStatusMessage(),
          style: TextStyleHelper.instance.body14Regular.copyWith(
            color: appTheme.gray400,
          ),
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 16.h),
        if (controller.isReconnecting.value) ..[
          CircularProgressIndicator(
            color: appTheme.primaryColor,
            strokeWidth: 3,
          ),
          SizedBox(height: 12.h),
          Text(
            '正在重连中... (${controller.reconnectAttempt.value}/${controller.maxReconnectAttempts.value})',
            style: TextStyleHelper.instance.body12Regular.copyWith(
              color: appTheme.primaryColor,
            ),
          ),
        ] else if (controller.connectionStatus.value == ConnectionStatus.connected) ..[
          Icon(
            Icons.check_circle,
            color: appTheme.successColor,
            size: 32.h,
          ),
          SizedBox(height: 8.h),
          Text(
            '连接已恢复',
            style: TextStyleHelper.instance.body14Bold.copyWith(
              color: appTheme.successColor,
            ),
          ),
        ] else ..[
          Icon(
            Icons.error_outline,
            color: appTheme.errorColor,
            size: 32.h,
          ),
          SizedBox(height: 8.h),
          Text(
            '连接失败',
            style: TextStyleHelper.instance.body14Bold.copyWith(
              color: appTheme.errorColor,
            ),
          ),
        ],
      ],
    ));
  }

  Widget _buildActionButtons() {
    return Obx(() {
      if (controller.connectionStatus.value == ConnectionStatus.connected) {
        return CustomButton(
          text: '继续游戏',
          buttonStyle: CustomButtonStyles.fillPrimary,
          onPressed: () => controller.onContinueGame(),
        );
      }
      
      return Row(
        children: [
          Expanded(
            child: CustomButton(
              text: '退出游戏',
              buttonStyle: CustomButtonStyles.fillGray,
              onPressed: controller.isReconnecting.value
                  ? null
                  : () => controller.onExitGame(),
            ),
          ),
          SizedBox(width: 12.h),
          Expanded(
            child: CustomButton(
              text: controller.isReconnecting.value ? '重连中...' : '重新连接',
              buttonStyle: CustomButtonStyles.fillPrimary,
              onPressed: controller.isReconnecting.value
                  ? null
                  : () => controller.onReconnect(),
            ),
          ),
        ],
      );
    });
  }
}