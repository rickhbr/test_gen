import "package:get/get.dart";
import "package:teste_gen/app/modules/details/bindings/details_binding.dart";
import "package:teste_gen/app/modules/details/views/details_view.dart";
import "package:teste_gen/app/modules/home/bindings/home_binding.dart";
import "package:teste_gen/app/modules/home/views/home_view.dart";

part "app_routes.dart";

class AppPages {
  AppPages._();

  static final routes = [
    GetPage(
      name: _Paths.home,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.details,
      page: () => const DetailsView(),
      binding: DetailsBinding(),
    ),
  ];
}
