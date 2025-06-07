import 'package:get/get.dart';
import '../models/content_modal_model.dart';
import '../../../../core/app_export.dart';

class ContentModalController extends GetxController {
  Rx<ContentModalModel> contentModalModel = ContentModalModel().obs;

  @override
  void onInit() {
    super.onInit();
    contentModalModel.value = ContentModalModel(
      contentText:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean euismod bibendum laoreet. Proin gravida dolor sit amet lacus accumsan et viverra justo commodo. Proin sodales pulvinar sic tempor. Sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nam fermentum, nulla luctus pharetra vulputate, felis tellus mollis orci, sed rhoncus pronin sapien nunc accuan eget.\n\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean euismod bibendum laoreet. Proin gravida dolor sit amet lacus accumsan et viverra justo commodo.\n\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean euismod bibendum laoreet. Proin gravida dolor sit amet lacus accumsan et viverra justo commodo. Proin sodales pulvinar sic tempor. Sociis natoque penatibus et magnis dis parturient montes, nascetur'
              .obs,
      currentPage: 2.obs,
      totalPages: 8.obs,
    );
  }

  void previousPage() {
    if ((contentModalModel.value.currentPage?.value ?? 1) > 1) {
      contentModalModel.value.currentPage?.value =
          (contentModalModel.value.currentPage?.value ?? 1) - 1;
    }
  }

  void nextPage() {
    if ((contentModalModel.value.currentPage?.value ?? 1) <
        (contentModalModel.value.totalPages?.value ?? 1)) {
      contentModalModel.value.currentPage?.value =
          (contentModalModel.value.currentPage?.value ?? 1) + 1;
    }
  }

  void closeModal() {
    Get.back();
  }
}
