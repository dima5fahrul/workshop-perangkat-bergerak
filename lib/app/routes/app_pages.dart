import 'package:get/get.dart';

import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/login/bindings/login_binding.dart';
import '../modules/login/views/login_view.dart';
import '../modules/pekan2/bindings/pekan2_binding.dart';
import '../modules/pekan2/views/pekan2_view.dart';
import '../modules/pekan3/bindings/pekan3_binding.dart';
import '../modules/pekan3/detail/bindings/pekan3_detail_binding.dart';
import '../modules/pekan3/detail/views/pekan3_detail_view.dart';
import '../modules/pekan3/views/pekan3_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => const LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.PEKAN2,
      page: () => Pekan2View(),
      binding: Pekan2Binding(),
    ),
    GetPage(
      name: _Paths.PEKAN3,
      page: () => const Pekan3View(),
      binding: Pekan3Binding(),
      children: [
        GetPage(
          name: _Paths.PEKAN3_DETAIL,
          page: () => Pekan3DetailView(),
          binding: Pekan3DetailBinding(),
        ),
      ],
    ),
  ];
}
