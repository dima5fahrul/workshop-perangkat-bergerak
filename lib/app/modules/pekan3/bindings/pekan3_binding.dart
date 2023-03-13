import 'package:get/get.dart';

import '../controllers/pekan3_controller.dart';

class Pekan3Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<Pekan3Controller>(
      () => Pekan3Controller(),
    );
  }
}
