import "package:flutter/material.dart";
import "package:flutter/services.dart";
import "package:get/get.dart";
import "package:teste_gen/app/core/theme/theme_data.dart";
import "package:teste_gen/app/globals/initializer.dart";
import "package:teste_gen/app/routes/app_pages.dart";

class GenTestApp extends StatefulWidget {
  const GenTestApp({super.key});

  @override
  State<GenTestApp> createState() => _GenTestAppState();
}

class _GenTestAppState extends State<GenTestApp> with WidgetsBindingObserver {
  bool loadedApp = false;
  final _scaffoldKey = GlobalKey<ScaffoldMessengerState>();

  @override
  void initState() {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    WidgetsBinding.instance.addObserver(this);
    Initializer.instance.loadedAppController.stream.listen((event) {
      setState(() {
        loadedApp = event;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      scaffoldMessengerKey: _scaffoldKey,
      title: "Heróis da Marvel",
      debugShowCheckedModeBanner: false,
      initialRoute: Routes.home,
      locale: const Locale("pt", "BR"),
      getPages: AppPages.routes,
      theme: createTheme(context),
    );
  }

  @override
  Future<void> dispose() async {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }
}
