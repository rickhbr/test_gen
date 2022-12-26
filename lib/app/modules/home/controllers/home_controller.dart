import "package:get/get.dart";
import "package:teste_gen/app/data/models/list_of_heros_model.dart";
import "package:teste_gen/app/data/repositories/home_repository.dart";

class HomeArguments {
  final String? imageBackground;
  final String? imageMovie;
  final String? title;
  final String? subtitle;
  final String? description;
  final String? year;
  final double? voteAverage;
  final int? voteCount;
  final double? popularity;

  HomeArguments({
    this.imageBackground,
    this.imageMovie,
    this.title,
    this.subtitle,
    this.description,
    this.year,
    this.voteAverage,
    this.voteCount,
    this.popularity,
  });
}

class HomeController extends GetxController {
  final HomeRepository _homeRepository = Get.find();

  final Rx<ListOfHeroModel> _bannerList = ListOfHeroModel(mcu: []).obs;
  ListOfHeroModel get bannerList => _bannerList.value;
  set bannerList(ListOfHeroModel value) => _bannerList.value = value;

  final RxBool _loading = false.obs;
  bool get loading => _loading.value;
  set loading(bool value) => _loading.value = value;

  final RxInt _currentIndex = 0.obs;
  int get currentIndex => _currentIndex.value;
  set currentIndex(int value) => _currentIndex.value = value;

  final Rxn<ListOfHeroModel> _mainBanner = Rxn();
  ListOfHeroModel? get mainBanner => _mainBanner.value;

  @override
  void onReady() {
    fetchBannerList();
    super.onReady();
  }

  void fetchBannerList() async {
    try {
      loading = true;
      bannerList = await _homeRepository.getListOfHeros();
    } finally {
      Future.delayed(const Duration(seconds: 2))
          .then((value) => loading = false);
    }
  }
}
