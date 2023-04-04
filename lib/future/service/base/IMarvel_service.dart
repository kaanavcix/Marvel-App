import 'package:dio/dio.dart';

abstract class IMarvelService<T> {
  final Dio dio;
  
  IMarvelService(this.dio);

  Future<T?> fetchData();
  Future<T?> getByIdFetchData(int id);
  Future<T?> byIdComics(int id);
  Future<T?> byIdCreators(int id);
  Future<T?> byIdSeries(int id);
  Future<T?> byIdStories(int id);
  Future<T?> byIdEvents(int id);
}


enum MarvelServiceEnum { comics, creators, events, stories, series }
