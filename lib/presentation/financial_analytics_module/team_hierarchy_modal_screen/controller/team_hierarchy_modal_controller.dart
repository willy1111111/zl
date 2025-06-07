import 'package:get/get.dart';
import '../models/team_hierarchy_modal_model.dart';
import '../../../core/app_export.dart';

class TeamHierarchyModalController extends GetxController {
  Rx<TeamHierarchyModalModel> teamHierarchyModalModel =
      TeamHierarchyModalModel().obs;

  @override
  void onInit() {
    super.onInit();
    teamHierarchyModalModel.value = TeamHierarchyModalModel();
  }

  void closeModal() {
    Get.back();
  }
}
