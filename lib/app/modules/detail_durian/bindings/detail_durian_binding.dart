import 'package:get/get.dart';

import '../controllers/detail_durian_controller.dart';

class DetailDurianBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DetailDurianController>(
      () => DetailDurianController(),
    );
  }
}
