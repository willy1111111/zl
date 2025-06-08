import 'package:get/get.dart';
import '../../../core/app_export.dart';
import '../widgets/chip_view_widget.dart';

/// This class is used in the [ChipViewWidget] component with GetX.
class ChipViewModel {
  Rx<String>? title;
  Rx<bool>? isSelected;

  ChipViewModel({
    this.title,
    this.isSelected,
  });
}
