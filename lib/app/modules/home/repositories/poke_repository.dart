import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import '../models/pokemon_model.dart';

class PokeRepository {
  final Dio dio;

  PokeRepository({@required this.dio});

  Future<List<PokemonModel>> getAllPokemons() async {
    var response = await dio.get('/pokemon');
    List<PokemonModel> list = List<PokemonModel>();
    for (var item in (response.data['results'] as List)) {
      PokemonModel model = PokemonModel(name: item['name']);
      list.add(model);
    }

    return list;
  }
}
