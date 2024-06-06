import 'package:get/get.dart';

class PembayaranController extends GetxController {
  final RxBool isMasterCardSelected = false.obs;
  final RxBool isVisaSelected = false.obs;
  final RxBool saveCardDetails = false.obs;

  void selectMasterCard() {
    isMasterCardSelected.value = true;
    isVisaSelected.value = false;
  }

  void selectVisaCard() {
    isMasterCardSelected.value = false;
    isVisaSelected.value = true;
  }

  void toggleSaveCardDetails(bool value) {
    saveCardDetails.value = value;
  }
}
