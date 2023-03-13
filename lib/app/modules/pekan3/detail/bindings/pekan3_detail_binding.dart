import 'package:get/get.dart';

import '../controllers/pekan3_detail_controller.dart';

class Pekan3DetailBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<Pekan3DetailController>(
      () => Pekan3DetailController(),
    );
  }
}
