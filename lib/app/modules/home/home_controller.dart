import 'package:mobx/mobx.dart';

import 'repositories/poke_repository.dart';
part 'home_controller.g.dart';

class HomeController = _HomeControllerBase with _$HomeController;

abstract class _HomeControllerBase with Store {
  final PokeRepository repository;

  @observable
  ObservableFuture pokemons;

  _HomeControllerBase({this.repository}) {
    fetchPokemons();
  }

  @action
  fetchPokemons() {
    pokemons = repository.getAllPokemons().asObservable();
  }
}
