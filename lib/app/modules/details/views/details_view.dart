import "package:flutter/material.dart";
import "package:get/get.dart";
import "package:teste_gen/app/core/theme/theme_app.dart";
import "package:teste_gen/app/core/utils/app_size.dart";
import "package:teste_gen/app/modules/details/controllers/details_controller.dart";
import "package:teste_gen/app/modules/details/widgets/about_movie_widget.dart";
import "package:teste_gen/app/modules/details/widgets/buttons_widget.dart";
import "package:teste_gen/app/widgets/loading.dart";

class DetailsView extends GetView<DetailsController> {
  const DetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Obx(
        () => Loading(
          show: controller.loading,
          child: _buildBody(context),
        ),
      ),
    );
  }

  Widget _buildBody(BuildContext context) {
    return Stack(
      children: [
        Opacity(
          opacity: 0.4,
          child: Image.network(
            controller.imageBackground!,
            height: AppSize().getHeight(280),
            width: MediaQuery.of(context).size.width,
          ),
        ),
        SingleChildScrollView(
          child: SafeArea(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 10.0, horizontal: 25.0),
                  child: _buildTopBar(),
                ),
                SizedBox(
                  height: AppSize().getHeight(60),
                ),
                _buildBackgroundImage(),
                SizedBox(
                  height: AppSize().getHeight(20),
                ),
                _buildDescription(context),
                SizedBox(
                  height: AppSize().getHeight(10),
                ),
                _buildInformationMovie(),
              ],
            ),
          ),
        )
      ],
    );
  }

  Widget _buildDescription(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.9,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          ButtonActionWidget(
            icon: Icons.add,
          ),
          ButtonActionWidget(
            icon: Icons.favorite_outline,
          ),
          ButtonActionWidget(
            icon: Icons.download,
          ),
          ButtonActionWidget(
            icon: Icons.share,
          ),
        ],
      ),
    );
  }

  Widget _buildTopBar() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        InkWell(
          onTap: () => Get.back(),
          child: Icon(
            Icons.arrow_back,
            color: ThemeAPP.colors.primaryBackground,
            size: 30,
          ),
        ),
        InkWell(
          onTap: () => {},
          child: Icon(
            Icons.favorite_border,
            color: ThemeAPP.colors.primaryBackground,
            size: 30,
          ),
        ),
      ],
    );
  }

  Widget _buildBackgroundImage() {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 10.0,
      ),
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color:
                        ThemeAPP.colors.grayTone.colorGray05.withOpacity(0.7),
                    blurRadius: 15,
                  )
                ]),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.network(
                controller.imageMovie!,
                height: AppSize().getHeight(230),
                width: 180,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(
              left: 80,
              bottom: 10,
            ),
            height: AppSize().getHeight(80.0),
            width: 80,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40),
              color: ThemeAPP.colors.primaryBackground,
              boxShadow: [
                BoxShadow(
                  color: ThemeAPP.colors.grayTone.colorGray05.withOpacity(0.7),
                  spreadRadius: 1,
                  blurRadius: 8,
                ),
              ],
            ),
            child: Icon(
              Icons.play_arrow,
              color: ThemeAPP.colors.blackTone.colorBlack01,
              size: 60,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildInformationMovie() {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 20,
        horizontal: 10,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Text(
              controller.title!,
              style: TextStyle(
                color: ThemeAPP.colors.primaryText,
                fontSize: 26.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            height: AppSize().getHeight(10),
          ),
          Text(
            controller.description!,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 14.0,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.justify,
          ),
          SizedBox(
            height: AppSize().getHeight(10),
          ),
          Text(
            "Sobre",
            style: TextStyle(
              color: ThemeAPP.colors.primaryText,
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          AboutMovie(
            text: "Nota:",
            info: controller.voteAverage.toString(),
            icon: Icons.star,
            color: Colors.yellow,
          ),
          AboutMovie(
            text: "Popularidade:",
            info: controller.popularity.toString(),
            icon: Icons.person,
            color: ThemeAPP.colors.grayTone.colorGray03,
          ),
          AboutMovie(
            text: "Números de Votos",
            info: controller.voteCount.toString(),
            icon: Icons.person,
            color: ThemeAPP.colors.grayTone.colorGray03,
          ),
          AboutMovie(
            text: "Ano",
            info: controller.year,
            icon: Icons.calendar_month,
            color: ThemeAPP.colors.grayTone.colorGray03,
          ),
        ],
      ),
    );
  }
}
