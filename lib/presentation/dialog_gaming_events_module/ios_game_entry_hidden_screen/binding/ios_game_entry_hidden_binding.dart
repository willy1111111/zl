import '../controller/ios_game_entry_hidden_controller.dart';
import '../../../../core/app_export.dart';

/// A binding class for the IosGameEntryHiddenScreen.
///
/// This class ensures that the IosGameEntryHiddenController is created when
/// IosGameEntryHiddenScreen is first called.
class IosGameEntryHiddenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => IosGameEntryHiddenController());
  }
}