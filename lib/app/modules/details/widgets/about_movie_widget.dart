import "package:flutter/material.dart";

class AboutMovie extends StatefulWidget {
  final String? text;
  final dynamic info;
  final IconData? icon;
  final Color? color;
  const AboutMovie({
    super.key,
    required this.text,
    required this.info,
    this.icon,
    this.color,
  });

  @override
  State<AboutMovie> createState() => _AboutMovieState();
}

class _AboutMovieState extends State<AboutMovie> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          widget.icon,
          color: widget.color,
          size: 22,
        ),
        const SizedBox(
          width: 4.0,
        ),
        Text(
          widget.text!,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 14.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          width: 6.0,
        ),
        Text(
          widget.info!,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 14.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
