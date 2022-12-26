import "package:flutter/material.dart";
import "package:teste_gen/app.dart";
import "package:teste_gen/app/globals/initializer.dart";

void main() {
  Initializer.instance.init(() {
    runApp(const GenTestApp());
  });
}
