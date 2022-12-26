import "package:flutter/material.dart";
import "package:get/get.dart";
import "package:mix/mix.dart";
import "package:teste_gen/app/core/theme/theme_app.dart";
import "package:teste_gen/app/core/utils/app_size.dart";
import "package:teste_gen/app/routes/app_pages.dart";

class ListHeros extends StatelessWidget {
  final String image;
  final String title;
  final String subtitle;
  final dynamic arguments;
  const ListHeros(
      {super.key,
      required this.image,
      required this.title,
      required this.subtitle,
      this.arguments});

  @override
  Widget build(BuildContext context) {
    return Pressable(
      onPressed: _onPressed,
      child: _buildBody(),
    );
  }

  MixableWidget _buildBody() {
    return Box(
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            VBox(
              children: [
                Container(
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: ThemeAPP.colors.grayTone.colorGray05,
                        spreadRadius: 0.5,
                        blurRadius: 9,
                      ),
                    ],
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10.0),
                    child: Image.network(
                      "https://image.tmdb.org/t/p/w600_and_h900_bestv2$image",
                      fit: BoxFit.cover,
                      height: AppSize().getHeight(160),
                    ),
                  ),
                ),
                SizedBox(
                  height: AppSize().getHeight(4),
                ),
                FittedBox(
                  fit: BoxFit.fitWidth,
                  child: Text(
                    title.replaceAll(":", "\n"),
                    style: const TextStyle(
                        fontSize: 11,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: AppSize().getHeight(4),
                ),
                Text(
                  "($subtitle)",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 11,
                      color: ThemeAPP.colors.grayTone.colorGray05),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _onPressed() async {
    Get.toNamed(Routes.details, arguments: arguments);
  }
}
