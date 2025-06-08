import 'package:get/get.dart';

import '../controller/golden_egg_ticket_collection_controller.dart';

import '../../../core/app_export.dart';

class GoldenEggTicketCollectionBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => GoldenEggTicketCollectionController());
  }
}
