import 'package:get/get.dart';
import '../controller/vip_rank_icons_gallery_controller.dart';
import '../../../../core/app_export.dart';

class VipRankIconsGalleryBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => VipRankIconsGalleryController());
  }
}
