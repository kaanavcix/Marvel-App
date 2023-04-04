import 'package:auto_route/auto_route.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:marvelapp/future/init/extension/mediaquery_extension.dart';
import 'package:marvelapp/future/init/extension/text_extension.dart';

import '../../../future/service/model/comics_model.dart';
import '../../../future/service/model/series_model.dart';
import '../../widgets/loading_Widget.dart';
import '../../widgets/profile_stack.dart';
import '../cubit/home_cubit.dart';
import 'movie_detail_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          foregroundColor: Colors.black,
          centerTitle: true,
          toolbarHeight: 55,
          title: SvgPicture.asset(
            "assets/svg/logo.svg",
            height: 44,
          ),
          actions: [ProfileStack()],
        ),
        body: BlocBuilder<HomeCubit, HomeState>(
          builder: (context, state) {
            return SizedBox(
              child: state.state.when(
                initiall: () => dummyPreview("init"),
                loading: (state) => const LoadingWidget(),
                error: (message) => dummyPreview(message),
                completed: (results, images, seriess) =>
                    homePageSuccess(context, results, images, seriess),
              ),
            );
          },
        ));
  }

  Center dummyPreview(String text) => Center(child: Text(text));

  SingleChildScrollView homePageSuccess(BuildContext context,
      List<Results> results, List<String> images, List<Resultss> resultss) {
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          textBar(context, "Latest Movies"),
          swipperBar(context, results, images),
          textBar(context, "Latest Series"),
          swipperBar(context, results, images),
          textBar(context, "Trending Today"),
          SizedBox(
            height: 150,
            width: context.getWidth(),
            child: ListView.builder(
             itemCount: resultss.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                var url =
                    "${resultss[index].thumbnail!.path}.${resultss[index].thumbnail!.extension}";
                print(url);
                return Container(
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    image: DecorationImage(image: NetworkImage(url) ,fit: BoxFit.cover)
                  ),
                  margin: const EdgeInsets.all(8),
                  height: 150,
                  width: 100,
                );
              },
            ),
          )
        ],
      ),
    );
  }

  SizedBox swipperBar(
      BuildContext context, List<Results> model, List<String> images) {
    return SizedBox(
      height: 173,
      width: context.getWidth(),
      child: Swiper(
        //  containerHeight: 200,
        containerWidth: context.getWidth(),
        autoplay: true,
        itemHeight: 173,
        itemWidth: 260,
        itemBuilder: (BuildContext context, int index) {
          return Image.network(
            "${model[index].images![0].path}.${model[index].images![0].extension}",
            fit: BoxFit.fill,
          );
        },
        itemCount: images.length,
        viewportFraction: 0.8,
        scale: 0.9,
        onTap: (index) {
          context.router.pushWidget(MovieDetailView(
            model: model[index],
          ));
        },
      ),
    );
  }

  Padding textBar(BuildContext context, String text) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Align(
        alignment: Alignment.topLeft,
        child: Text(text,
            //textAlign: TextAlign.start,
            style: context
                .getTextTheme()
                .headlineSmall!
                .copyWith(fontWeight: FontWeight.w900, fontSize: 24)),
      ),
    );
  }
}
