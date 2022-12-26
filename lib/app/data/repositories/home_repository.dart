import "package:teste_gen/app/data/models/list_of_heros_model.dart";
import "package:teste_gen/app/data/providers/home_api_provider.dart";

class HomeRepository {
  final HomeApiProvider _homeApiProvider;

  HomeRepository(this._homeApiProvider);

  Future<ListOfHeroModel> getListOfHeros() async {
    return _homeApiProvider.getListOfHeros();
  }
}
