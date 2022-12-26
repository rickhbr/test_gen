import "package:flutter/material.dart";
import "package:teste_gen/app/core/theme/theme_app.dart";

class CarouselLoading extends StatelessWidget {
  const CarouselLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.fromLTRB(10, 10, 10, 0),
          decoration: BoxDecoration(
            color: ThemeAPP.colors.grayTone.colorGray01,
            borderRadius: const BorderRadius.all(
              Radius.circular(10),
            ),
          ),
          child: ClipRRect(
            borderRadius: const BorderRadius.all(
              Radius.circular(10),
            ),
            child: AspectRatio(
              aspectRatio: 16 / 9,
              child: Container(color: ThemeAPP.colors.grayTone.colorGray01),
            ),
          ),
        ),
      ],
    );
  }
}
