import 'package:get/get.dart';
import '../models/income_item_model.dart';
import '../../../../core/app_export.dart';

class AgentIncomeOverviewController extends GetxController {
  RxList<IncomeItemModel> incomeItems = <IncomeItemModel>[].obs;

  @override
  void onInit() {
    super.onInit();
    _initializeIncomeItems();
  }

  void _initializeIncomeItems() {
    incomeItems.value = [
      IncomeItemModel(
        number: '1'.obs,
        title: 'Each Registration Bonus '.obs,
        amount: '+৳2'.obs,
        height: 54.0.obs, // Modified: Changed from RxInt to RxDouble
      ),
      IncomeItemModel(
        number: '2'.obs,
        title: 'Each Deposit Bonus '.obs,
        amount: '+৳5'.obs,
        height: 54.0.obs, // Modified: Changed from RxInt to RxDouble
      ),
      IncomeItemModel(
        number: '3'.obs,
        title: 'Maximum achievement reward\nis '.obs,
        amount: '+৳8888'.obs,
        height: 54.0.obs, // Modified: Changed from RxInt to RxDouble
        isMultiline: true.obs,
      ),
      IncomeItemModel(
        number: '4'.obs,
        title: 'Agent Ranking Rewards up to '.obs,
        amount: '+৳8999'.obs,
        height: 54.0.obs, // Modified: Changed from RxInt to RxDouble
        isMultiline: true.obs,
      ),
      IncomeItemModel(
        number: '5'.obs,
        title: 'Qualified Bonuses can receive up to '.obs,
        amount: '+৳58'.obs,
        subtitle: ' Per Qualified User'.obs,
        height: 60.0.obs, // Modified: Changed from RxInt to RxDouble
        isMultiline: true.obs,
      ),
      IncomeItemModel(
        number: '6'.obs,
        title: ''.obs,
        amount: 'UP TO 1.1%'.obs,
        subtitle: ' Deposit Rebate'.obs,
        height: 54.0.obs, // Modified: Changed from RxInt to RxDouble
        isAmountFirst: true.obs,
      ),
      IncomeItemModel(
        number: '7'.obs,
        title: ''.obs,
        amount: '1%'.obs,
        subtitle: ' Betting Rebate in 4 levels'.obs,
        height: 54.0.obs, // Modified: Changed from RxInt to RxDouble
        isAmountFirst: true.obs,
      ),
    ];
  }

  void closeDialog() {
    Get.back();
  }
}
