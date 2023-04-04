

import 'package:dio/dio.dart';
import 'package:marvelapp/future/service/base/IMarvel_service.dart';
import 'package:marvelapp/future/service/model/events_model.dart';

class EventsService extends IMarvelService<EventsModel> {
  EventsService(super.dio);

  @override
  Future<EventsModel?> byIdComics(int id) async {
    try {
      var response = await dio.get(
          "${MarvelServiceEnum.events.name}/$id/${MarvelServiceEnum.comics.name}"); //Gelen data burada Map türündedir

      if (response.statusCode == 200) {
        var data = response.data;

        if (response.data is Map<String, dynamic>) {
          return EventsModel.fromJson(data);
        }
      }
    } on DioError catch (e) {
      print(e.message);
      throw Exception(e.message.toString());
    }
  }

  @override
  Future<EventsModel?> byIdCreators(int id) async {
    try {
      var response = await dio.get(
          "${MarvelServiceEnum.events.name}/$id/${MarvelServiceEnum.creators.name}"); //Gelen data burada Map türündedir

      if (response.statusCode == 200) {
        var data = response.data;

        if (response.data is Map<String, dynamic>) {
          return EventsModel.fromJson(data);
        }
      }
    } on DioError catch (e) {
      print(e.message);
      throw Exception(e.message.toString());
    }
  }

  @override
  Future<EventsModel?> byIdEvents(int id) async {
   return await null;
  }

  @override
  Future<EventsModel?> byIdSeries(int id) async{
   try {
      var response = await dio.get(
          "${MarvelServiceEnum.events.name}/$id/${MarvelServiceEnum.series.name}"); //Gelen data burada Map türündedir

      if (response.statusCode == 200) {
        var data = response.data;

        if (response.data is Map<String, dynamic>) {
          return EventsModel.fromJson(data);
        }
      }
    } on DioError catch (e) {
      print(e.message);
      throw Exception(e.message.toString());
    }
  }

  @override
  Future<EventsModel?> byIdStories(int id) async {
   try {
      var response = await dio.get(
          "${MarvelServiceEnum.events.name}/$id/${MarvelServiceEnum.stories.name}"); //Gelen data burada Map türündedir

      if (response.statusCode == 200) {
        var data = response.data;

        if (response.data is Map<String, dynamic>) {
          return EventsModel.fromJson(data);
        }
      }
    } on DioError catch (e) {
      print(e.message);
      throw Exception(e.message.toString());
    }
  }

  @override
  Future<EventsModel?> fetchData() async {
  try {
      var response = await dio.get(
          MarvelServiceEnum.events.name); //Gelen data burada Map türündedir

      if (response.statusCode == 200) {
        var data = response.data;

        if (response.data is Map<String, dynamic>) {
          return EventsModel.fromJson(data);
        }
      }
    } on DioError catch (e) {
      print(e.message);
      throw Exception(e.message.toString());
    }
  }

  @override
  Future<EventsModel?> getByIdFetchData(int id) async {
   try {
      var response = await dio.get(
          "${MarvelServiceEnum.events.name}/$id}"); //Gelen data burada Map türündedir

      if (response.statusCode == 200) {
        var data = response.data;

        if (response.data is Map<String, dynamic>) {
          return EventsModel.fromJson(data);
        }
      }
    } on DioError catch (e) {
      print(e.message);
      throw Exception(e.message.toString());
    }
  }

}