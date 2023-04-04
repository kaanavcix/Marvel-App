import 'package:flutter_test/flutter_test.dart';
import 'package:marvelapp/future/global/dio_instance.dart';
import 'package:marvelapp/future/service/base/IMarvel_service.dart';
import 'package:marvelapp/future/service/bussines/comics_service.dart';
import 'package:marvelapp/future/service/bussines/series_service.dart';
import 'package:marvelapp/future/service/model/comics_model.dart';
import 'package:marvelapp/future/service/model/series_model.dart';

void main() {
  test("Marvel Api Text", () async {
    ComicsService service = ComicsService(DioInstance.instance.dio);

    SeriesService services = SeriesService(DioInstance.instance.dio);
    //  expectAsync0(() => service.fetchData(),);

    await services.fetchData().then((value) {
       return print(value!.data!.resultss![0].toString());
       
    });

    await service.fetchData().then((value) {
      return print(value!.data!.results![0].series.toString());
    });
    expect(await services.fetchData(), isA<SeriesModel>());
    expect(await service.fetchData(), isA<ComicsModel>());
  });
}
