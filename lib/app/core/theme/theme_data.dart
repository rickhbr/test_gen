import "package:flutter/material.dart";
import "package:teste_gen/app/core/theme/theme_app.dart";

ThemeData createTheme(BuildContext context) {
  return ThemeData(
    textTheme: ThemeAPP.typography.fontMontserratTextTheme(
      Theme.of(context).textTheme,
    ),
    primaryColor: ThemeAPP.colors.primaryBackground,
    colorScheme: Theme.of(context).colorScheme.copyWith(
          primary: ThemeAPP.colors.primaryBackground,
          secondary: ThemeAPP.colors.secondaryBackground,
        ),
  );
}
