import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:marvelapp/future/init/extension/color_extension.dart';
import 'package:marvelapp/future/init/extension/mediaquery_extension.dart';
import 'package:marvelapp/future/init/extension/text_extension.dart';
import 'package:marvelapp/view/downloaded/cubit/downloaded_cubit.dart';
import 'package:marvelapp/view/widgets/profile_stack.dart';
import 'package:marvelapp/view/widgets/toggle_buttons.dart';
import 'package:percent_indicator/percent_indicator.dart';

class DownloadedView extends StatefulWidget {
  const DownloadedView({super.key});

  @override
  State<DownloadedView> createState() => _DownloadedViewState();
}

class _DownloadedViewState extends State<DownloadedView> {
  @override
  Widget build(BuildContext context) {
    @override
    Future<void> initState() async {
      super.initState();
      await context.read<DownloadedCubit>().fetchData();
    }

    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          automaticallyImplyLeading: false,
          title: SvgPicture.asset(
            "assets/svg/logo.svg",
            height: 44,
          ),
          actions: const [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.0),
              child: ProfileStack(),
            )
          ],
          bottom: PreferredSize(
              preferredSize: const Size.fromHeight(50),
              child: BlocBuilder<DownloadedCubit, DownloadedState>(
                builder: (context, state) {
                  return MarvelToggleButtons(
                      index: state.index,
                      onTap: () =>
                          context.read<DownloadedCubit>().changeIndex(0),
                      onTap1: () =>
                          context.read<DownloadedCubit>().changeIndex(1),
                      text: "Downloads",
                      text1: "Watchlist");
                },
              )),
        ),
        body: BlocBuilder<DownloadedCubit, DownloadedState>(
            builder: (context, state) {
          return RefreshIndicator(
              onRefresh: () async => await context.read<DownloadedCubit>().fetchData(),
              child: 
                state.status.when(
                inital: () {
                  return Center(
                    child: Text("İnitial"),
                  );
                },
                laoding: (islaoding) {
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                },
                completed: (iscompleted) {
                  return downloadedCard(context);
                },
              
              ));
        }));
  }
//TODO: ŞUNA BAKARIZ Bİ
  Padding downloadedCard(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0) + EdgeInsets.symmetric(horizontal: 10),
      child: Container(
        width: context.getWidth(),
        height: 130,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(0),
            color: Color(0xffD9D9D9).withOpacity(0.1)),
        child: Row(children: [
          Container(
            width: 100,
            color: Colors.red,
          ),
          const SizedBox(
            width: 5,
          ),
          Column(
            children: [
              Text("Spider-Man: Homecoming",
                  style: context
                      .getTextTheme()
                      .titleMedium!
                      .copyWith(fontWeight: FontWeight.bold)),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: LinearPercentIndicator(
                  width: context.getWidth() * 0.55,
                  lineHeight: 5.0,
                  percent: 0.8,
                  backgroundColor: Colors.white.withOpacity(0.3),
                  progressColor: context.getPrimaryColor(),
                  barRadius: Radius.circular(80),
                  trailing: Text("2GB",
                      style: context
                          .getTextTheme()
                          .labelMedium!
                          .copyWith(color: Colors.white.withOpacity(0.5))),
                ),
              ),
              Text("%80 watched"),
              SvgPicture.asset("assets/svg/delete.svg"),
            ],
          ),
        ]),
      ),
    );
  }
}
