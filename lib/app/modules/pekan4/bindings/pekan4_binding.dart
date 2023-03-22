import 'package:get/get.dart';

import '../controllers/pekan4_controller.dart';

class Pekan4Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<Pekan4Controller>(
      () => Pekan4Controller(),
    );
  }
}
