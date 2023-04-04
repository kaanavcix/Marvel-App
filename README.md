# Marvel App
 


## Introduction

Hello friends, I decided to have to enough time for developing new apps. That's why I found a design and marvel api source. Actually, I am so bored from using a getx state managment and I wanted to try new technologies and state managements. I prefered to use Flutter bloc and Freezed package. Generally, I couldn't found turkish source relating to freezed and flutter bloc packages.



 #### Design Kit
 
 [Marvel Community Design UI Kit](https://www.figma.com/file/QTDbYcg9uG1rehgrc0ctAy/MARVEL--Streaming-App-(Community)?node-id=1%3A2&t=7jWci8TTVtdhIHlD-1)

 #### Flutter

  - Dio 
  - Flutter Cubit
  - Auto Route
  - Freezed
  - Pinput
  - Firebase (also, we used for login register process).
  - Shared Preferences
  - Swipper 



 

  ##### Backend

   [Marvel Api](https://developer.marvel.com) 
   u should login or register for access to api 


## Giriş

Merhaba arkadaşlar, yeni bir uygulama geliştiricek boş vakte sahiptim. Bu sebeple bir dizayn ve marvel api kaynağı buldum. Açıkcası , Aşırı sıkıldım getx state managment ile herşeyi çözümlemekten (Psikolojide teknolojik uygulamalar yarışması için uygulama hazırlarken farkettim) özellikle obs ile aşırı kolay yapılabilen bu mantık bir süre sonra kodlarımın veriminin azaldığını düşünmeme sebep oldu. Bu yüzden yeni teknolojiler denemek istedim . Flutter bloc cubit ve Freezed paketini kullanmaya karar verdim. Genel olarak pek fazla türkçe kaynak olarak bir yazıya denk gelmedim bu yüzden üstüne güzelce bir proje yazıp 1.5-2 yıllık bilgi birikimi mi aktarmaya çalıştım.

 #### Dizayn Kit
 
 [Marvel Community Design UI Kit](https://www.figma.com/file/QTDbYcg9uG1rehgrc0ctAy/MARVEL--Streaming-App-(Community)?node-id=1%3A2&t=7jWci8TTVtdhIHlD-1)

 #### Flutter

  - Dio 
  - Flutter Cubit
  - Auto Route
  - Freezed
  - Pinput
  - Firebase (Kayıt olma ve giriş yapma gibi işlemler için kullanıldı).
  - Shared Preferences
  - Swipper 



 

  ##### Backend

   [Marvel Api](https://developer.marvel.com) 
   Api kaynağına erişim için kayıt olmasınız gerekmektedir.



 #### Freezed and Bloc Cubit

 Merhaba arkadaşlar bu kısımda size freezed paketi yardımıyla state yönetimlerini ne kadar kaliteli ve efektif olarak yapabileceğinizi anlatacağım.

  - Öncelikle flutter cubit ile beraber freezed paketinide pub dev üzerinden yüklemeniz gerekiyor.
  
   - Ekstaradan vs code üzerinden flutter bloc eklentisini yüklemeniz hazır şablonla daha hızlı kod yazmanıza olanak sağlar.


   Biz bu kısımda home_cubit kısmını ele alalım daha anlaşılır anlatabilmem için.

   ``` dart
   part of 'home_cubit.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.initial() = _Initial;
}

```

- Frezzed size bu şekilde bir şablon sunacaktır. Paketin kullanımdaki en güzel mantığı **copwith when, whenOrNull, map** gibi güzel fonksiyonlarının bulunmasıdır. Aslında freezed paketi olmadan önce state değişimi(emit ettiğim) zaman index gibi belli verilerde kayıp yaşıyordum. eğer loading error ve completed gibi fonksiyonlar eklemek isterseniz factory methodlarını oluşturabilirsiniz 

> Factory method  : Bir kurucu methodun kopyası gibi düşünebilirsiniz.


``` dart
 part of 'home_cubit.dart';
@freezed
class HomeState with _$HomeState {
  const factory HomeState.initial() = _Initial;
  const factory HomeState.loading() = _Loading;
  const factory HomeState.completed()= _Completed;
  const factory HomeState.error() = _Error;
}

```

- Bu şekilde ekledim fakat cubit içerisinde yine state yönetimi konusunda bahsettiğim veri kayıplarını yaşayacağız bazı verileri sonuçta state in her anında erişmemiz yada güncellememiz gerekebilir. Bu yüzden ekstaradan bir HomeStatus adında bir  durumları kontrol edebileceğim bir freezed türeyecek bir sınıf yapacağım ve loading completed ve error gibi fonksiyonları o sınıfa ekleyeceğim 

 
``` dart
 part of 'home_cubit.dart';
@freezed
class HomeState with _$HomeState {
  const factory HomeState.initial({requied HomeStatus status,int? index}) = _Initial;
  
}

@freezed
class HomeStatus with _$HomeStatus {
  const factory HomeStatus.initials() = _Initials;
  
const factory HomeStatus.loading() = _Loading;
  const factory HomeStatus.completed()= _Completed;
  const factory HomeStatus.error() = _Error;
}

```

- Gördüğünüz gibi bir HomeStatus isminde durumları kontrol edebileceğim bir state yapısı oluşturdum ve ayrıyetten homestate içerisine ekstaradan index kontrolü yapabilmek için değişken ekledim. State kurgusu bu şekildeydi.

- Şimdi ise HomeCubit içerisine geçip orda business( İş ) kodlarını yazalım.


``` dart
part 'home_state.dart';
part 'home_cubit.freezed.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit({required this.service})
      : super(const HomeState.initial(state: HomeStatus.initiall()));

  ComicsService service;
  ComicsModel? comicsModel;
  List<Results>? results = [];

  Future<void> fetchData() async {
    emit(state.copyWith(state: const HomeStatus.loading(state: true)));
    var repo = await service.fetchData();

    if (repo is ComicsModel) {
      comicsModel = repo;
      List<String> images = List.empty(growable: true);

      for (var element in comicsModel!.data!.results!) {
        if (element.images!.length != 0) {
          var url =
              "${element.images![0].path}.${element.images![0].extension}";
          images.add(url);

          if (element.images!.length != 0) {
            results?.add(element);
          }
        }
      }

      //    print(images.length);
      print(results?.length);

      emit(state.copyWith(
          state: HomeStatus.completed(model: results!, images: images)));
    } else {
      emit(state.copyWith(state: const HomeStatus.error(message: "Error")));
    }
  }
}

```