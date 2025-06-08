import 'package:get/get.dart';
import '../../../../core/app_export.dart';

/// This class is used in the [TicketRecordsDashboardScreen] screen with GetX.

class TicketRecordsDashboardModel {
  RxString? filterType = 'All'.obs;
  RxString? dateRange = '2023-05-11~2023-05-14'.obs;
  RxString? totalAmount = '0.00'.obs;
  RxBool? hasData = false.obs;

  TicketRecordsDashboardModel();
}
