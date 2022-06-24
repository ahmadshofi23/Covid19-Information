import 'package:get/get.dart';

import '../modules/detail_information/bindings/detail_information_binding.dart';
import '../modules/detail_information/views/detail_information_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';

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
      name: _Paths.DETAIL_INFORMATION,
      page: () => DetailInformationView(),
      binding: DetailInformationBinding(),
    ),
  ];
}
