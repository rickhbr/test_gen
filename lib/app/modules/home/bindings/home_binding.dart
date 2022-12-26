import "package:get/get.dart";
import "package:teste_gen/app/modules/home/controllers/home_controller.dart";

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(
      () => HomeController(),
    );
  }
}
