import "package:flutter/material.dart";
import "package:teste_gen/app/core/theme/theme_app.dart";

class ButtonActionWidget extends StatefulWidget {
  final IconData? icon;
  const ButtonActionWidget({super.key, required this.icon});

  @override
  State<ButtonActionWidget> createState() => _ButtonActionWidgetState();
}

class _ButtonActionWidgetState extends State<ButtonActionWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: ThemeAPP.colors.grayTone.colorGray05,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: ThemeAPP.colors.grayTone.colorGray01,
            spreadRadius: 1,
            blurRadius: 4,
          ),
        ],
      ),
      child: Icon(
        widget.icon,
        color: Colors.white,
        size: 30,
      ),
    );
  }
}
