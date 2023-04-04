import 'package:auto_route/auto_route.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:marvelapp/future/init/extension/color_extension.dart';
import 'package:marvelapp/future/init/extension/mediaquery_extension.dart';
import 'package:marvelapp/future/init/extension/text_extension.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:marvelapp/future/init/routes/app_router.gr.dart';
import 'package:marvelapp/view/onboarding/cubit/onboarding_cubit.dart';

import 'widgets/dot_indicator.dart';

class OnbordingPage extends StatelessWidget {
  const OnbordingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OnboardingCubit, OnboardingState>(
      builder: (context, state) {
        return OnboardingView();
      },
    );
  }
}

enum onboardPath {
  firstscreen,
  secondscreen,
  thirdscreen,
  fourscreen,
  fivescreen,
  sixscreen
}

class OnboardingView extends StatelessWidget {
  OnboardingView({super.key});

  @override
  Widget build(BuildContext context) {
    var index = context.watch<OnboardingCubit>().selectedIndexs;

    return Scaffold(
      body: BlocBuilder<OnboardingCubit, OnboardingState>(
        builder: (context, state) {
          var index = state.selectedIndex;

          const edgeInsets = EdgeInsets.symmetric(horizontal: 15);
          const edgeInsets2 = EdgeInsets.only(bottom: 8);
          return Stack(
            alignment: Alignment.topCenter,
            children: [
              Positioned(
                  child: Image.asset(
                "assets/images/${onboardPath.values[index].name}.png",
                fit: BoxFit.fitWidth,
                width: context.getWidth(),
              )),
              Container(
                width: context.getWidth(),
                height: context.getHeight(),
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
                    stops: [0.2, 0.7],
                    end: Alignment.bottomCenter,
                  ),
                ),
              ),
              Positioned(
                left: 0,
                right: 0,
                top: context.getHeight() * 0.35,
                child: SvgPicture.asset(
                  "assets/svg/logo.svg",
                  fit: BoxFit.scaleDown,
                  height: 85,
                  width: 144,
                ),
              ),
              Positioned(
                  left: context.getWidth() * 0.3,
                  right: context.getWidth() * 0.3,
                  top: context.getHeight() * 0.58,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      DotIndicator(selectedIndex: index == 0),
                      DotIndicator(selectedIndex: index == 1),
                      DotIndicator(selectedIndex: index == 2),
                      DotIndicator(selectedIndex: index == 3),
                      DotIndicator(selectedIndex: index == 4),
                      DotIndicator(selectedIndex: index == 5),
                    ],
                  )),
              Positioned(
                  right: 0,
                  left: 0,
                  top: 520,
                  child: Text(
                    "All your favourite \n MARVEL Movies & Series \n  at one place",
                    textAlign: TextAlign.center,
                    style: context.getTextTheme().bodySmall!.copyWith(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.white),
                  )),
              state.selectedIndex == 5
                  ? Positioned(
                      bottom: 50,
                      left: 0,
                      right: 0,
                      child: Column(
                        children: [
                          Container(
                            height: 50,
                            width: context.getWidth(),
                            color: context.getPrimaryColor(),
                            margin: edgeInsets + edgeInsets2,
                            child: GestureDetector(
                              onTap: () =>
                                  context.router.pushNamed("/register"),
                              child: Center(
                                  child: Text(
                                "Sign up",
                                style: context
                                    .getTextTheme()
                                    .titleMedium!
                                    .copyWith(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18),
                              )),
                            ),
                          ),
                          GestureDetector(
                            onTap: () => context.router.push(const LoginViewRoute()),
                            child: Container(
                              height: 50,
                              width: context.getWidth(),
                              // color: context.getPrimaryColor(),
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      width: 1, color: Colors.white)),
                              margin: edgeInsets,
                              child: Center(
                                  child: Text(
                                "Log in",
                                style: context
                                    .getTextTheme()
                                    .titleMedium!
                                    .copyWith(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18),
                              )),
                            ),
                          ),
                        ],
                      ))
                  : BlocBuilder<OnboardingCubit, OnboardingState>(
                      builder: (context, state) {
                        return Positioned(
                            bottom: 50,
                            left: 0,
                            right: 0,
                            child: InkWell(
                              onTap: () => context
                                  .read<OnboardingCubit>()
                                  .changePage(state.selectedIndex + 1),
                              child: Container(
                                height: 50,
                                width: context.getWidth(),
                                color: context.getPrimaryColor(),
                                margin: EdgeInsets.symmetric(horizontal: 15),
                                child: Center(
                                    child: Text(
                                  "Contiune",
                                  style: context
                                      .getTextTheme()
                                      .titleMedium!
                                      .copyWith(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18),
                                )),
                              ),
                            ));
                      },
                    )
            ],
          );
        },
      ),
    );
  }
}
