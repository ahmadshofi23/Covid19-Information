import 'package:get/get.dart';

import '../controllers/detail_information_controller.dart';

class DetailInformationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DetailInformationController>(
      () => DetailInformationController(),
    );
  }
}
