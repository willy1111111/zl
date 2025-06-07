import 'package:get/get.dart';
import '../models/ticket_records_network_error_model.dart';
import '../../../../core/app_export.dart';

class TicketRecordsNetworkErrorController extends GetxController {
  Rx<TicketRecordsNetworkErrorModel?> ticketRecordsNetworkErrorModel =
      Rx<TicketRecordsNetworkErrorModel?>(null);
  RxBool isLoading = false.obs;

  @override
  void onInit() {
    super.onInit();
    ticketRecordsNetworkErrorModel.value = TicketRecordsNetworkErrorModel();
  }

  void onBackPressed() {
    Get.back();
  }

  void onReloadPressed() async {
    isLoading.value = true;

    await Future.delayed(Duration(seconds: 1));

    isLoading.value = false;

    // Simulate reload action - you can replace this with actual reload logic
    Get.snackbar(
      'Reload',
      'Page reloaded successfully',
      snackPosition: SnackPosition.BOTTOM,
    );
  }
}
