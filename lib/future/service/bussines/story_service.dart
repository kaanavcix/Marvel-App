


import 'package:marvelapp/future/service/base/IMarvel_service.dart';
import 'package:marvelapp/future/service/model/story_model.dart';

class StoryService extends IMarvelService<StoryModel>{  //TODO: SERVİS TAMAMLANSIN
  StoryService(super.dio);

  @override
  Future<StoryModel?> byIdComics(int id) {
    // TODO: implement byIdComics
    throw UnimplementedError();
  }

  @override
  Future<StoryModel?> byIdCreators(int id) {
    // TODO: implement byIdCreators
    throw UnimplementedError();
  }

  @override
  Future<StoryModel?> byIdEvents(int id) {
    // TODO: implement byIdEvents
    throw UnimplementedError();
  }

  @override
  Future<StoryModel?> byIdSeries(int id) {
    // TODO: implement byIdSeries
    throw UnimplementedError();
  }

  @override
  Future<StoryModel?> byIdStories(int id) {
    // TODO: implement byIdStories
    throw UnimplementedError();
  }

  @override
  Future<StoryModel?> fetchData() {
    // TODO: implement fetchData
    throw UnimplementedError();
  }

  @override
  Future<StoryModel?> getByIdFetchData(int id) {
    // TODO: implement getByIdFetchData
    throw UnimplementedError();
  }


}


//TODO: Service kısmı yapılacak