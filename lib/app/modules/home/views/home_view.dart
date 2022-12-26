import "package:carousel_slider/carousel_slider.dart";
import "package:flutter/material.dart";
import "package:get/get.dart";
import "package:mix/mix.dart";
import "package:teste_gen/app/core/assets.dart";
import "package:teste_gen/app/core/theme/theme_app.dart";
import "package:teste_gen/app/core/utils/app_size.dart";
import "package:teste_gen/app/core/utils/constants/image_url.dart";
import "package:teste_gen/app/modules/home/controllers/home_controller.dart";
import "package:teste_gen/app/widgets/list_heros_slider.dart";
import "package:teste_gen/app/widgets/loading.dart";

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          opacity: 0.6,
          image: AssetImage(
            Assets.backgroundAlternative,
          ),
          fit: BoxFit.fill,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Obx(
          () => Loading(
            show: controller.loading,
            child: _buildBody(),
          ),
        ),
      ),
    );
  }

  Widget _buildBody() {
    return VBox(
      children: [
        Center(
          child: SizedBox(
            width: 160,
            height: 120,
            child: Image.asset(Assets.icHomeMarvel),
          ),
        ),
        SizedBox(
          height: AppSize().getHeight(220),
        ),
        _buildText(),
        SizedBox(
          height: AppSize().getHeight(20),
        ),
        _middleCard(),
      ],
    );
  }

  Widget _buildText() {
    return VBox(
      children: [
        Text(
          "UNIVERSO MARVEL",
          style: TextStyle(
            color: ThemeAPP.colors.grayTone.colorGray11,
            fontSize: 34,
            fontWeight: FontWeight.bold,
            fontFamily: "montserrat",
          ),
        ),
        SizedBox(
          height: AppSize().getHeight(50),
        ),
        Text(
          "LINHA DO TEMPO",
          style: TextStyle(
            color: ThemeAPP.colors.grayTone.colorGray11,
            fontSize: 14,
            fontWeight: FontWeight.bold,
            fontFamily: "montserrat",
          ),
        ),
      ],
    );
  }

  Widget _middleCard() {
    final Mix containerStyle = Mix(
      bgColor(ThemeAPP.colors.shadowColors.shadow02),
      rounded(20),
    );
    return VBox(
      mix: containerStyle,
      children: [
        _renderBannerList(),
      ],
    );
  }

  Widget _renderBannerList() {
    return Box(
      child: CarouselSlider(
        items: controller.bannerList.mcu
            .map(
              (e) => ListHeros(
                title: e.title!,
                image: e.posterPath!,
                subtitle: e.releaseDate!.year.toString(),
                arguments: HomeArguments(
                  description: e.overview,
                  imageMovie: ImageUrl.imageMovie + e.posterPath!,
                  title: e.title,
                  subtitle: e.title,
                  year: e.releaseDate!.year.toString(),
                  imageBackground: ImageUrl.imageBackground + e.backdropPath!,
                  voteAverage: e.voteAverage!,
                  voteCount: e.voteCount!,
                  popularity: e.popularity,
                ),
              ),
            )
            .toList(),
        options: CarouselOptions(
          viewportFraction: 0.3,
          aspectRatio: 16 / 9,
          height: AppSize().getHeight(230),
          enableInfiniteScroll: false,
          padEnds: false,
        ),
      ),
    );
  }
}
