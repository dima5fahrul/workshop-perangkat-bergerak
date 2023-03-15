import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:workshop_flutter/app/modules/pekan3/views/latihan_detail_view.dart';
import 'package:workshop_flutter/app/modules/pekan3/views/latihan_view.dart';
import 'package:workshop_flutter/app/modules/pekan3/views/percobaan_detail_view.dart';
import 'package:workshop_flutter/app/modules/pekan3/views/percobaan_view.dart';

import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/login/bindings/login_binding.dart';
import '../modules/login/views/login_view.dart';
import '../modules/pekan2/bindings/pekan2_binding.dart';
import '../modules/pekan2/views/pekan2_view.dart';
import '../modules/pekan3/bindings/pekan3_binding.dart';
import '../modules/pekan3/views/pekan3_view.dart';
import '../modules/pekan3/views/pekan3_detail_view.dart';

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
    ),
    GetPage(
      name: _Paths.PEKAN3_DETAIL,
      page: () => Pekan3DetailView(),
      binding: Pekan3Binding(),
    ),
    GetPage(
      name: _Paths.PERCOBAAN_PEKAN3,
      page: () => const PercobaanPekan3(),
      binding: Pekan3Binding(),
    ),
    GetPage(
      name: _Paths.PERCOBAAN_PEKAN3_DETAIL,
      page: () => PercobaanPekan3Detail(),
      binding: Pekan3Binding(),
    ),
    GetPage(
      name: _Paths.LATIHAN_PEKAN3,
      page: () => const LatihanPekan3(),
      binding: Pekan3Binding(),
    ),
    GetPage(
      name: _Paths.LATIHAN_PEKAN3_DETAIL,
      page: () => LatihanPekan3Detail(),
      binding: Pekan3Binding(),
    ),
  ];
}
