import "package:get/get.dart";
import "package:teste_gen/app/modules/home/controllers/home_controller.dart";

class DetailsController extends GetxController {
  final RxBool _loading = false.obs;
  bool get loading => _loading.value;
  set loading(bool value) => _loading.value = value;

  String? imageBackground;
  String? imageMovie;
  String? title;
  String? subtitle;
  String? description;
  String? year;
  double? voteAverage;
  int? voteCount;
  double? popularity;

  @override
  void onInit() {
    super.onInit();
    if (Get.arguments is HomeArguments) {
      final args = Get.arguments as HomeArguments;
      imageBackground = args.imageBackground;
      title = args.title;
      subtitle = args.subtitle;
      imageMovie = args.imageMovie;
      description = args.description;
      year = args.year;
      voteAverage = args.voteAverage;
      voteCount = args.voteCount;
      popularity = args.popularity;
    } else {
      Get.back();
    }
  }
}
