import '../../../core/app_export.dart';
import '../models/betting_record_history_model.dart';
import '../models/betting_record_item_model.dart';

class BettingRecordHistoryController extends GetxController {
  Rx<BettingRecordHistoryModel> bettingRecordHistoryModelObj =
      BettingRecordHistoryModel().obs;

  RxList<BettingRecordItemModel> bettingRecords =
      <BettingRecordItemModel>[].obs;
  RxString selectedDate = '2023-05-11'.obs;
  RxInt currentPage = 1.obs;
  RxBool isLoading = false.obs;

  @override
  void onInit() {
    super.onInit();
    _initializeBettingRecords();
  }

  void _initializeBettingRecords() {
    bettingRecords.value = [
      BettingRecordItemModel(
        gameIcon: ImageConstant.imgGroup847.obs,
        gameName: 'Fortune Tiger'.obs,
        dateTime: '2022-10-26  12:33:24'.obs,
        betAmount: '1.00'.obs,
        payOut: '1.96'.obs,
        isWin: true.obs,
      ),
      BettingRecordItemModel(
        gameIcon: ImageConstant.imgVectorBlueGray40016x16.obs,
        gameName: 'Fortune Tiger'.obs,
        dateTime: '2022-10-26  12:33:24'.obs,
        betAmount: '1.00'.obs,
        payOut: '0'.obs,
        isWin: false.obs,
      ),
      BettingRecordItemModel(
        gameIcon: ImageConstant.imgGroup833.obs,
        gameName: 'Fortune Tiger'.obs,
        dateTime: '2022-10-26  12:33:24'.obs,
        betAmount: '1.00'.obs,
        payOut: '0'.obs,
        isWin: false.obs,
      ),
      BettingRecordItemModel(
        gameIcon: ImageConstant.imgSubtract.obs,
        gameName: 'Fortune Tiger'.obs,
        dateTime: '2022-10-26  12:33:24'.obs,
        betAmount: '1.00'.obs,
        payOut: '0'.obs,
        isWin: false.obs,
      ),
      BettingRecordItemModel(
        gameIcon: ImageConstant.imgGroup847.obs,
        gameName: 'Fortune Tiger'.obs,
        dateTime: '2022-10-26  12:33:24'.obs,
        betAmount: '1.00'.obs,
        payOut: '1.96'.obs,
        isWin: true.obs,
      ),
      BettingRecordItemModel(
        gameIcon: ImageConstant.imgVectorBlueGray40016x16.obs,
        gameName: 'Fortune Tiger'.obs,
        dateTime: '2022-10-26  12:33:24'.obs,
        betAmount: '1.00'.obs,
        payOut: '0'.obs,
        isWin: false.obs,
      ),
      BettingRecordItemModel(
        gameIcon: ImageConstant.imgGroup833.obs,
        gameName: 'Fortune Tiger'.obs,
        dateTime: '2022-10-26  12:33:24'.obs,
        betAmount: '1.00'.obs,
        payOut: '0'.obs,
        isWin: false.obs,
      ),
      BettingRecordItemModel(
        gameIcon: ImageConstant.imgSubtract.obs,
        gameName: 'Fortune Tiger'.obs,
        dateTime: '2022-10-26  12:33:24'.obs,
        betAmount: '1.00'.obs,
        payOut: '0'.obs,
        isWin: false.obs,
      ),
      BettingRecordItemModel(
        gameIcon: ImageConstant.imgSubtract.obs,
        gameName: 'Fortune Tiger'.obs,
        dateTime: '2022-10-26  12:33:24'.obs,
        betAmount: '1.00'.obs,
        payOut: '1.96'.obs,
        isWin: true.obs,
      ),
      BettingRecordItemModel(
        gameIcon: ImageConstant.imgSubtract.obs,
        gameName: 'Fortune Tiger'.obs,
        dateTime: '2022-10-26  12:33:24'.obs,
        betAmount: '1.00'.obs,
        payOut: '1.96'.obs,
        isWin: true.obs,
      ),
      BettingRecordItemModel(
        gameIcon: ImageConstant.imgSubtract.obs,
        gameName: 'Fortune Tiger'.obs,
        dateTime: '2022-10-26  12:33:24'.obs,
        betAmount: '1.00'.obs,
        payOut: '1.96'.obs,
        isWin: true.obs,
      ),
    ];
  }

  void onDateFilterTap() {
    // Handle date filter dropdown tap
    print('Date filter tapped');
  }

  void onPreviousPage() {
    if (currentPage.value > 1) {
      currentPage.value--;
      print('Previous page: ${currentPage.value}');
    }
  }

  void onNextPage() {
    currentPage.value++;
    print('Next page: ${currentPage.value}');
  }

  @override
  void onClose() {
    super.onClose();
  }
}
