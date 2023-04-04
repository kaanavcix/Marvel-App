
import 'package:dio/dio.dart';
import 'package:marvelapp/future/service/base/IMarvel_service.dart';
import 'package:marvelapp/future/service/model/series_model.dart';

class SeriesService extends IMarvelService<SeriesModel>{
  SeriesService(super.dio);

  @override
  Future<SeriesModel?> byIdComics(int id) async {
    try {
      var response = await dio.get(
          "${MarvelServiceEnum.series.name}/$id/${MarvelServiceEnum.comics.name}"); //Gelen data burada Map türündedir

      if (response.statusCode == 200) {
        var data = response.data;

        if (response.data is Map<String, dynamic>) {
          return SeriesModel.fromJson(data);
        }
      }
    } on DioError catch (e) {
      print(e.message);
      throw Exception(e.message.toString());
    }
  }

  @override
  Future<SeriesModel?> byIdCreators(int id) async {
    try {
      var response = await dio.get(
          "${MarvelServiceEnum.series.name}/$id/${MarvelServiceEnum.creators.name}"); //Gelen data burada Map türündedir

      if (response.statusCode == 200) {
        var data = response.data;

        if (response.data is Map<String, dynamic>) {
          return SeriesModel.fromJson(data);
        }
      }
    } on DioError catch (e) {
      print(e.message);
      throw Exception(e.message.toString());
    }
  }

  @override
  Future<SeriesModel?> byIdEvents(int id) async {
    try {
      var response = await dio.get(
          "${MarvelServiceEnum.series.name}/$id/${MarvelServiceEnum.events.name}"); //Gelen data burada Map türündedir

      if (response.statusCode == 200) {
        var data = response.data;

        if (response.data is Map<String, dynamic>) {
          return SeriesModel.fromJson(data);
        }
      }
    } on DioError catch (e) {
      print(e.message);
      throw Exception(e.message.toString());
    }
  }

  @override
  Future<SeriesModel?> byIdSeries(int id) async{
  return await null;
  }

  @override
  Future<SeriesModel?> byIdStories(int id) async{
    try {
      var response = await dio.get(
          "${MarvelServiceEnum.series.name}/$id/${MarvelServiceEnum.stories.name}"); //Gelen data burada Map türündedir

      if (response.statusCode == 200) {
        var data = response.data;

        if (response.data is Map<String, dynamic>) {
          return SeriesModel.fromJson(data);
        }
      }
    } on DioError catch (e) {
      print(e.message);
      throw Exception(e.message.toString());
    }
  }

  @override
  Future<SeriesModel?> fetchData() async {
 try {
      var response = await dio.get(
          MarvelServiceEnum.series.name); //Gelen data burada Map türündedir

      if (response.statusCode == 200) {
        var data = response.data;

        if (response.data is Map<String, dynamic>) {
          return SeriesModel.fromJson(data);
        }
      }
    } on DioError catch (e) {
      print(e.message);
      throw Exception(e.message.toString());
    }
  }

  @override
  Future<SeriesModel?> getByIdFetchData(int id) async {
  try {
      var response = await dio.get(
          "${MarvelServiceEnum.series.name}/$id"); //Gelen data burada Map türündedir

      if (response.statusCode == 200) {
        var data = response.data;

        if (response.data is Map<String, dynamic>) {
          return SeriesModel.fromJson(data);
        }
      }
    } on DioError catch (e) {
      print(e.message);
      throw Exception(e.message.toString());
    }
  }
}