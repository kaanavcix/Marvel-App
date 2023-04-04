import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:marvelapp/cubit/app_cubit.dart';
import 'package:marvelapp/future/init/extension/color_extension.dart';
import 'package:marvelapp/future/init/extension/mediaquery_extension.dart';
import 'package:marvelapp/future/init/extension/text_extension.dart';
import 'package:marvelapp/view/home/view/home_view.dart';
import 'package:marvelapp/view/main/view/main_view.dart';
import 'package:marvelapp/view/onboarding/cubit/login_cubit.dart';
import 'package:marvelapp/view/onboarding/register_view.dart';
import 'package:marvelapp/view/onboarding/widgets/input_widget.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    var emailController = context.read<LoginCubit>().emailController;
    var passwordController = context.read<LoginCubit>().passwordController;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: BlocConsumer<LoginCubit, LoginState>(
        listener: (context, state) {},
        builder: (context, state) {
          return Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 55,
                ),
                Align(
                  alignment: Alignment.center,
                  child: SvgPicture.asset(
                    "assets/svg/logo.svg",
                    height: 80,
                  ),
                ),
                //Placeholder(fallbackHeight: 90,fallbackWidth: 90,),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0) +
                      EdgeInsets.only(top: 20),
                  child: InputWidget(
                    textEditingController: emailController,
                    hintText: "Enter your Email ID",
                  ),
                ),
                Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: InputWidget(
                      textEditingController: passwordController,
                      hintText: "Password",
                      suffixText: state.isVisible ?? false ? "Side" : "Show",
                      isVisible: state.isVisible,
                      onTap: () => context.read<LoginCubit>().changeVisible(),
                    )),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: GestureDetector(
                    onTap: () {
                      context.read<LoginCubit>().loginControl();
                      context.read<AppCubit>().login();
                    },
                    child: Container(
                      height: 50,
                      width: context.getWidth(),
                      decoration: BoxDecoration(
                          color: context.getPrimaryColor(),
                          border: Border.all(
                              width: 3, color: context.getPrimaryColor())),
                      margin: const EdgeInsets.symmetric(horizontal: 20),
                      child: Center(
                          child: Text(
                        "Log in",
                        style: context.getTextTheme().titleMedium!.copyWith(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      )),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Align(
                      alignment: Alignment.bottomRight,
                      child: Text(
                        "Forgot Password",
                        style: context.getTextTheme().bodyMedium!.copyWith(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Colors.white.withOpacity(0.7)),
                      )),
                ),

                const SizedBox(
                  height: 20,
                ),
                Align(
                    alignment: Alignment.center,
                    child: Text(
                      "OR",
                      style: context.getTextTheme().titleLarge!.copyWith(
                          color: Colors.white.withOpacity(0.7),
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    )),
                const SizedBox(
                  height: 20,
                ),
                Align(
                    alignment: Alignment.center,
                    child: Text(
                      "Contiune with",
                      style: context.getTextTheme().titleLarge!.copyWith(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w900),
                    )),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0) +
                      const EdgeInsets.only(top: 20),
                  child: Row(
                    //mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                    children: [
                      rowButton(context, "google", "Google"),
                      rowButton(context, "facebook", "Facebook"),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Already have an account?",
                      style: context.getTextTheme().titleLarge!.copyWith(
                          color: Colors.white.withOpacity(0.7),
                          fontSize: 14,
                          fontWeight: FontWeight.w900),
                    ),
                    GestureDetector(
                      onTap: () => context.router.pushWidget(RegisterView()),
                      child: Text(
                        " Sign in",
                        style: context.getTextTheme().titleLarge!.copyWith(
                            color: context.getPrimaryColor(),
                            fontSize: 14,
                            fontWeight: FontWeight.w900),
                      ),
                    ),
                  ],
                ),
              ]);
        },
      ),
    );
  }

  Container rowButton(BuildContext context, String path, String title) {
    return Container(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Row(mainAxisSize: MainAxisSize.min, children: [
          SvgPicture.asset(
            "assets/svg/$path.svg",
            height: 40,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(
              title,
              style: context.getTextTheme().bodyMedium!.copyWith(
                  color: Colors.black,
                  fontWeight: FontWeight.w900,
                  fontSize: 14),
            ),
          )
        ]),
      ),
    );
  }
}
