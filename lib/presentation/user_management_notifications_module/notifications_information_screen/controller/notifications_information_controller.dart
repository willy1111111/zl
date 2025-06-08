import 'package:get/get.dart';
import '../models/notifications_information_model.dart';
import '../../../core/app_export.dart';

class NotificationsInformationController extends GetxController {
  Rx<NotificationsInformationModel?> notificationModel =
      Rx<NotificationsInformationModel?>(null);

  @override
  void onInit() {
    super.onInit();
    notificationModel.value = NotificationsInformationModel();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
