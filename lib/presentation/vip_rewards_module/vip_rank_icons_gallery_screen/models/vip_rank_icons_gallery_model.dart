import 'package:get/get.dart';
import '../../../../core/app_export.dart';

class VipRankIconsGalleryModel {
  RxList<VipRankIconModel>? largeVipIcons;
  RxList<VipRankIconModel>? mediumVipIcons;
  RxList<VipRankIconModel>? smallVipIcons;

  VipRankIconsGalleryModel({
    this.largeVipIcons,
    this.mediumVipIcons,
    this.smallVipIcons,
  });
}

class VipRankIconModel {
  Rx<String>? imagePath;
  Rx<int>? rank;
  Rx<String>? altText;
  Rx<String>? iconType;

  VipRankIconModel({
    this.imagePath,
    this.rank,
    this.altText,
    this.iconType,
  });
}
