import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:marvelapp/future/init/extension/color_extension.dart';
import 'package:marvelapp/future/init/extension/text_extension.dart';
import 'package:marvelapp/view/onboarding/cubit/register_cubit.dart';
import 'package:marvelapp/view/onboarding/payment_view.dart';
import 'package:marvelapp/view/onboarding/widgets/input_widget.dart';

import 'widgets/marvel_button.dart';
import 'widgets/row_button.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: BlocConsumer<RegisterCubit, RegisterState>(
        listener: (context, state) {
         
        },
        builder: (context, state) {
          const edgeInsets = EdgeInsets.symmetric(vertical: 8.0);
          const edgeInsets2 = EdgeInsets.only(top: 20);
          const edgeInsets3 = EdgeInsets.symmetric(horizontal: 20.0);
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
                  padding: edgeInsets + edgeInsets2,
                  child: InputWidget(
                    textEditingController: context.watch<RegisterCubit>().emailController ,
                    hintText: "Enter your Email ID",
                  ),
                ),
                Padding(
                    padding: edgeInsets,
                    child: InputWidget(
                      textEditingController: context.watch<RegisterCubit>().passwordController ,
                      hintText: "Password",
                      suffixText: (state.isShow) ?? false ? "Side" : "Show",
                      isVisible: state.isShow ,
                      onTap: () =>
                          context.read<RegisterCubit>().changeVisibility(),
                    )),
                MarvelButton(
                  state,
                    text: "Signup",
                    onTap: () {
                      context.read<RegisterCubit>().registerControl();
                      context.router.pushWidget(PaymentView());
                    }),
                Padding(
                  padding: edgeInsets3,
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

              const   SizedBox(
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
              const  SizedBox(
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

                    children: const [
                      RowButton(path: "google", title: "Google"),
                      RowButton(path: "facebook", title: "Facebook"),
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
                    Text(
                      " Sign in",
                      style: context.getTextTheme().titleLarge!.copyWith(
                          color: context.getPrimaryColor(),
                          fontSize: 14,
                          fontWeight: FontWeight.w900),
                    ),
                  ],
                ),
              ]);
        },
      ),
    );
  }
}
