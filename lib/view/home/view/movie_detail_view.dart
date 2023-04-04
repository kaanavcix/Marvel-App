import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:marvelapp/future/init/extension/color_extension.dart';
import 'package:marvelapp/future/init/extension/mediaquery_extension.dart';
import 'package:marvelapp/future/init/extension/text_extension.dart';
import 'package:marvelapp/future/service/model/comics_model.dart';

class MovieDetailView extends StatelessWidget {
  MovieDetailView({required this.model, super.key});

  Results model;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: 0,
      child: Scaffold(
          body: SingleChildScrollView(
        child: Column(children: [
          Stack(children: [
            Positioned(
                child: Image.network(
              "${model.images![0].path}.${model.images![0].extension}",
              fit: BoxFit.fitWidth,
              width: context.getWidth(),
              height: 476,
            )),
            Container(
              width: context.getWidth(),
              height: 476,
              //    height: context.getHeight() * 0.6,
              //child: Image.asset("assets/images/firstscreen.png",),
              decoration: BoxDecoration(
                //    image: DecorationImage(fit: BoxFit.cover,image: AssetImage("assets/images/firstscreen.png")),
                gradient: LinearGradient(
                  colors: [
                    Colors.black.withOpacity(0.1),
                    Colors.black.withOpacity(0.9)
                  ],
                  begin: Alignment.topCenter,
                  stops: const [0.2, 0.7],
                  end: Alignment.bottomCenter,
                ),
              ),
            ),
            Positioned(
                child: SafeArea(
                    child: IconButton(
                        onPressed: () => context.router.pop(),
                        icon: const Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                        )))),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                height: 80,
                width: 80,
                decoration: const BoxDecoration(
                    //color: context.getPrimaryColor().withOpacity(0.7),
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: AssetImage("assets/images/arrow.png"))),
              ),
            ),
            Positioned(
              top: 60,
              left: 0,
              right: 0,
              child: Align(
                alignment: Alignment.topCenter,
                child: Text(model.title ?? "",
                    style: context.getTextTheme().bodyLarge!.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.lerp(
                            FontWeight.w900, FontWeight.w900, 2),
                        fontSize: 20)),
              ),
            ),
          ]),
          const SizedBox(
            height: 10,
          ),
          Row(
            //  mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              OutlinedButton(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                      side: BorderSide(
                          color: context.getPrimaryColor(), width: 3)),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      "Download",
                      style: context.getTextTheme().bodyMedium!.copyWith(
                          fontWeight: FontWeight.w900, fontSize: 18.3),
                    ),
                  )),
              TextButton.icon(
                onPressed: () {},
                icon: const Icon(
                  Icons.add,
                  color: Colors.white,
                ),
                label: Text(
                  "Add to Watchlist",
                  style: context.getTextTheme().titleMedium,
                ),
                style: TextButton.styleFrom(),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
                model.description == ""
                    ? model.textObjects![0].text ?? " "
                    : (model.description ?? ""),
                overflow: TextOverflow.fade,
                textAlign: TextAlign.justify),
          ),
          Container(
              height: 40,
              color: Colors.white.withOpacity(0.15),
              child: TabBar(
                  indicatorColor: context.getPrimaryColor(),
                  indicatorPadding: EdgeInsets.symmetric(horizontal: 8),
                  splashFactory: NoSplash.splashFactory,
                  enableFeedback: false,
                  tabs: const [Text("Writer"), Text("Cast"), Text("More")],
                  labelStyle: context.getTextTheme().bodyLarge!.copyWith(
                      color: Colors.white.withOpacity(0.8),
                      fontSize: 14,
                      fontWeight: FontWeight.lerp(
                          FontWeight.w900, FontWeight.w900, 2)))),
          SizedBox(
            width: context.getWidth(),
            height: context.getHeight() * 0.8,
            child: TabBarView(children: [
              ListView.builder(
                itemCount: model.creators!.items!.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(model.creators!.items![index].name ?? ""),
                    subtitle: Text(model.creators!.items![index].role ?? ""),
                  );
                },
              ),
              Container(
                color: Colors.blue,
              ),
              Container(
                color: Colors.yellow,
              )
            ]),
          )
        ]),
      )),
    );
  }
}
