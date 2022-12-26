import "package:get/get.dart";
import "package:teste_gen/app/modules/details/controllers/details_controller.dart";

class DetailsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DetailsController>(
      () => DetailsController(),
    );
  }
}
