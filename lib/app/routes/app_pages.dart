import 'package:get/get.dart';

import '../modules/detail_durian/bindings/detail_durian_binding.dart';
import '../modules/detail_durian/views/detail_durian_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/pembayaran/bindings/pembayaran_binding.dart';
import '../modules/pembayaran/views/pembayaran_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.PEMBAYARAN;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.DETAIL_DURIAN,
      page: () => const DetailDurianView(),
      binding: DetailDurianBinding(),
    ),
    GetPage(
      name: _Paths.PEMBAYARAN,
      page: () => const PembayaranView(),
      binding: PembayaranBinding(),
    ),
  ];
}
