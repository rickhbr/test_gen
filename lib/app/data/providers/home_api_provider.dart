import "dart:convert";

import "package:flutter/services.dart";
import "package:teste_gen/app/data/models/list_of_heros_model.dart";

class HomeApiProvider {
  Future<ListOfHeroModel> getListOfHeros() async {
    try {
      final response = await rootBundle.loadString('assets/jsons/mock.json');
      var data = await json.decode(response);

      return ListOfHeroModel.fromJson(data);
    } catch (e) {
      rethrow;
    }
  }
}
