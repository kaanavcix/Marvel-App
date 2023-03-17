import 'package:auto_route/auto_route.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:marvelapp/future/init/extension/color_extension.dart';
import 'package:marvelapp/future/init/extension/mediaquery_extension.dart';
import 'package:marvelapp/future/init/extension/text_extension.dart';

import '../../../future/init/extension/image_extension.dart';
import '../../widgets/profile_stack.dart';

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
        actions: [
          ProfileStack()
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            textBar(context, "Latest Movies"),
            swipperBar(context, "https://via.placeholder.com/288x188"),
            textBar(context, "Latest Series"),
            swipperBar(context, "https://via.placeholder.com/288x188"),
            textBar(context, "Trending Today"),
            SizedBox(
              height: 150,
              width: context.getWidth(),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Container(
                    margin: const EdgeInsets.all(8),
                    color: Colors.blue,
                    height: 150,
                    width: 100,
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }

  SizedBox swipperBar(BuildContext context, String image) {
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
            image,
            fit: BoxFit.fill,
          );
        },
        itemCount: 10,
        viewportFraction: 0.8,
        scale: 0.9,
        onTap: (index) {
          context.router.pushNamed("/movieDetail");
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
