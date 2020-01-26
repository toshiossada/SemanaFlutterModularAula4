// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeController on _HomeControllerBase, Store {
  final _$pokemonsAtom = Atom(name: '_HomeControllerBase.pokemons');

  @override
  ObservableFuture<dynamic> get pokemons {
    _$pokemonsAtom.context.enforceReadPolicy(_$pokemonsAtom);
    _$pokemonsAtom.reportObserved();
    return super.pokemons;
  }

  @override
  set pokemons(ObservableFuture<dynamic> value) {
    _$pokemonsAtom.context.conditionallyRunInAction(() {
      super.pokemons = value;
      _$pokemonsAtom.reportChanged();
    }, _$pokemonsAtom, name: '${_$pokemonsAtom.name}_set');
  }

  final _$_HomeControllerBaseActionController =
      ActionController(name: '_HomeControllerBase');

  @override
  dynamic fetchPokemons() {
    final _$actionInfo = _$_HomeControllerBaseActionController.startAction();
    try {
      return super.fetchPokemons();
    } finally {
      _$_HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }
}
