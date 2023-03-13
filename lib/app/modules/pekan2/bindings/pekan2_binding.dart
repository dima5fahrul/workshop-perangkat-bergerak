import 'package:get/get.dart';

import '../controllers/pekan2_controller.dart';

class Pekan2Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<Pekan2Controller>(
      () => Pekan2Controller(),
    );
  }
}
