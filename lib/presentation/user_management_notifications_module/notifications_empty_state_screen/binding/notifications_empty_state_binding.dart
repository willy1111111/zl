import 'package:get/get.dart';

import '../../../core/app_export.dart';
import '../controller/notifications_empty_state_controller.dart';

/// A binding class for the NotificationsEmptyStateScreen.
///
/// This class ensures that the NotificationsEmptyStateController is created when the
/// NotificationsEmptyStateScreen is first loaded.
class NotificationsEmptyStateBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => NotificationsEmptyStateController());
  }
}
