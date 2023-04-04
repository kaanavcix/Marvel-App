import 'package:dio/dio.dart';
import 'package:marvelapp/future/service/base/IMarvel_service.dart';
import 'package:marvelapp/future/service/model/creators_model.dart';

class CreatorService extends IMarvelService<CreatorsModel> {
  CreatorService(super.dio);

  @override
  Future<CreatorsModel?> byIdComics(int id) async {
    try {
      var response = await dio.get(
          "${MarvelServiceEnum.creators.name}/$id/${MarvelServiceEnum.comics.name}"); //Gelen data burada Map türündedir

      if (response.statusCode == 200) {
        var data = response.data;

        if (response.data is Map<String, dynamic>) {
          return CreatorsModel.fromJson(data);
        }
      }
    } on DioError catch (e) {
      print(e.message);
      throw Exception(e.message.toString());
    }
  }

  @override
  Future<CreatorsModel?> byIdCreators(int id) async {
    return await null;
  }

  @override
  Future<CreatorsModel?> byIdEvents(int id) async {
    try {
      var response = await dio.get(
          "${MarvelServiceEnum.creators.name}/$id/${MarvelServiceEnum.events.name}"); //Gelen data burada Map türündedir

      if (response.statusCode == 200) {
        var data = response.data;

        if (response.data is Map<String, dynamic>) {
          return CreatorsModel.fromJson(data);
        }
      }
    } on DioError catch (e) {
      print(e.message);
      throw Exception(e.message.toString());
    }
  }

  @override
  Future<CreatorsModel?> byIdSeries(int id) async {
   try {
      var response = await dio.get(
          "${MarvelServiceEnum.creators.name}/$id/${MarvelServiceEnum.series.name}"); //Gelen data burada Map türündedir

      if (response.statusCode == 200) {
        var data = response.data;

        if (response.data is Map<String, dynamic>) {
          return CreatorsModel.fromJson(data);
        }
      }
    } on DioError catch (e) {
      print(e.message);
      throw Exception(e.message.toString());
    }
  }

  @override
  Future<CreatorsModel?> byIdStories(int id) async {
try {
      var response = await dio.get(
          "${MarvelServiceEnum.creators.name}/$id/${MarvelServiceEnum.stories.name}"); //Gelen data burada Map türündedir

      if (response.statusCode == 200) {
        var data = response.data;

        if (response.data is Map<String, dynamic>) {
          return CreatorsModel.fromJson(data);
        }
      }
    } on DioError catch (e) {
      print(e.message);
      throw Exception(e.message.toString());
    }
  }

  @override
  Future<CreatorsModel?> fetchData() async {
try {
      var response = await dio.get(
          MarvelServiceEnum.creators.name); //Gelen data burada Map türündedir

      if (response.statusCode == 200) {
        var data = response.data;

        if (response.data is Map<String, dynamic>) {
          return CreatorsModel.fromJson(data);
        }
      }
    } on DioError catch (e) {
      print(e.message);
      throw Exception(e.message.toString());
    }
  }

  @override
  Future<CreatorsModel?> getByIdFetchData(int id) async {
  try {
      var response = await dio.get(
          "${MarvelServiceEnum.creators.name}/$id"); //Gelen data burada Map türündedir

      if (response.statusCode == 200) {
        var data = response.data;

        if (response.data is Map<String, dynamic>) {
          return CreatorsModel.fromJson(data);
        }
      }
    } on DioError catch (e) {
      print(e.message);
      throw Exception(e.message.toString());
    }
  }
}
