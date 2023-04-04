import 'dart:io';

import 'package:dio/dio.dart';
import 'package:dio/src/dio.dart';
import 'package:marvelapp/future/service/base/IMarvel_Service.dart';
import 'package:marvelapp/future/service/model/comics_model.dart';

class ComicsService extends IMarvelService<ComicsModel> {
  ComicsService(super.dio);

  //const {id, name} = {"ali","veli"}

  @override
  Future<ComicsModel?> byIdComics(int id) async {
    return await null;
  }

  @override
  Future<ComicsModel?> byIdCreators(int id) async {
    try {
      var response = await dio.get(
          "${MarvelServiceEnum.comics.name}/$id/${MarvelServiceEnum.creators.name}"); //Gelen data burada Map türündedir

      if (response.statusCode == 200) {
        var data = response.data;

        if (response.data is Map<String, dynamic>) {
          return ComicsModel.fromJson(data);
        }
      }
    } on DioError catch (e) {
      print(e.message);
    }
  }

  @override
  Future<ComicsModel?> byIdEvents(int id) async {
    try {
      var response = await dio.get(
          "${MarvelServiceEnum.comics.name}/$id/${MarvelServiceEnum.events.name}"); //Gelen data burada Map türündedir

      if (response.statusCode == 200) {
        var data = response.data;

        if (response.data is Map<String, dynamic>) {
          return ComicsModel.fromJson(data);
        }
      }
    } on DioError catch (e) {
      print(e.message);
    }
  }

  @override
  Future<ComicsModel?> byIdSeries(int id) async {
    return await null;
  }

  @override
  Future<ComicsModel?> byIdStories(int id) async {
    try {
      var response = await dio.get(
          "${MarvelServiceEnum.comics.name}/$id/${MarvelServiceEnum.stories.name}"); //Gelen data burada Map türündedir

      if (response.statusCode == 200) {
        var data = response.data;

        if (response.data is Map<String, dynamic>) {
          return ComicsModel.fromJson(data);
        }
      }
    } on DioError catch (e) {
      print(e.message);
    }
  }

  @override
  Future<ComicsModel?> fetchData() async {
    try {
      var response = await dio.get(
          MarvelServiceEnum.comics.name); //Gelen data burada Map türündedir

      if (response.statusCode == 200) {
        var data = response.data;

        if (response.data is Map<String, dynamic>) {
          return ComicsModel.fromJson(data);
        }
      }
    } on DioError catch (e) {
      print(e.message);
    }
  }

  @override
  Future<ComicsModel?> getByIdFetchData(int id) async {
    try {
      var response = await dio.get(
          "${MarvelServiceEnum.comics.name}/$id"); //Gelen data burada Map türündedir

      if (response.statusCode == 200) {
        var data = response.data;

        if (response.data is Map<String, dynamic>) {
          return ComicsModel.fromJson(data);
        }
      }
    } on DioError catch (e) {
      print(e.message);
    }
  }
}
