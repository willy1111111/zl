import 'package:get/get.dart';
import '../controller/team_hierarchy_modal_controller.dart';
import '../../../core/app_export.dart';

class TeamHierarchyModalBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TeamHierarchyModalController());
  }
}
