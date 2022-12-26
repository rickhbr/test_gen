import "dart:async";

import "package:flutter/material.dart";
import "package:get/get.dart";
import "package:teste_gen/app/data/providers/home_api_provider.dart";
import "package:teste_gen/app/data/repositories/home_repository.dart";
import "package:teste_gen/app/modules/details/controllers/details_controller.dart";
import "package:teste_gen/app/modules/home/controllers/home_controller.dart";

class Initializer {
  static final Initializer instance = Initializer._internal();
  factory Initializer() => instance;
  Initializer._internal();

  StreamController<bool> loadedAppController = StreamController.broadcast();

  void init(VoidCallback runApp) {
    runZonedGuarded(() async {
      WidgetsFlutterBinding.ensureInitialized();

      FlutterError.onError = (details) {
        FlutterError.dumpErrorToConsole(details);
        throw details;
      };

      _initServices().then((value) async {
        // run app before stream send ack
        runApp();

        WidgetsBinding.instance.addPostFrameCallback((_) {
          // wait app to render completely
          // load app complete
          loadedAppController.add(true);
        });
      });
    }, (error, stack) {});
  }

  Future<void> _initServices() async {
    try {
      _initControllers();
      _initApis();
      _initRepositories();
    } catch (err) {
      rethrow;
    }
  }

  void _initControllers() {
    Get.lazyPut(() => HomeController(), fenix: true);
    Get.lazyPut(() => DetailsController(), fenix: true);
  }

  void _initApis() {
    Get.lazyPut(() => HomeApiProvider(), fenix: true);
  }

  void _initRepositories() {
    Get.lazyPut(() => HomeRepository(Get.find<HomeApiProvider>()), fenix: true);
  }
}
