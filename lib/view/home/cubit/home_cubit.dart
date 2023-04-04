import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:marvelapp/future/service/bussines/comics_service.dart';
import 'package:marvelapp/future/service/model/series_model.dart';

import '../../../future/service/bussines/series_service.dart';
import '../../../future/service/model/comics_model.dart';

part 'home_state.dart';
part 'home_cubit.freezed.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit(
      {required ComicsService comicsService,
      required SeriesService seriesService})
      : _seriesService = seriesService,
        _comicsService = comicsService,
        super(const HomeState.initial(state: HomeStatus.initiall()));

  final ComicsService _comicsService;
  final SeriesService _seriesService;
  ComicsModel? comicsModel;
  SeriesModel? seriesModel;
  List<Results>? results = [];
  List<Resultss> resultss = [];

  Future<void> fetchData() async {
    emit(state.copyWith(state: const HomeStatus.loading(state: true)));
    var comicsRepo = await _comicsService.fetchData();
    var seriesRepo = await _seriesService.fetchData();

    if (comicsRepo is ComicsModel && seriesRepo is SeriesModel) {
      comicsModel = comicsRepo;
      seriesModel = seriesRepo;
      List<String> comicsImages = List.empty(growable: true);
    

      for (var element in comicsModel!.data!.results!) {
        if (element.images!.length != 0) {
          var url =
              "${element.images![0].path}.${element.images![0].extension}";
          comicsImages.add(url);

          if (element.images!.length != 0) {
            results?.add(element);
          }
        }
      }
      for (var element in seriesModel!.data!.resultss!) {
        if (!element.thumbnail!.path!.contains("image_not_available")) {
          resultss.add(element);
        }
      }

      emit(state.copyWith(
          state: HomeStatus.completed(
              model: results!, images: comicsImages, series: resultss)));
    } else {
      emit(state.copyWith(state: const HomeStatus.error(message: "Error")));
    }
  }
}
