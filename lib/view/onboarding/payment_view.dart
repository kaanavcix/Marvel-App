import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:marvelapp/cubit/app_cubit.dart';
import 'package:marvelapp/future/init/extension/color_extension.dart';
import 'package:marvelapp/future/init/extension/text_extension.dart';
import 'package:marvelapp/future/service/firebase/auth_repository.dart';
import 'package:marvelapp/view/onboarding/cubit/register_cubit.dart';
import 'package:marvelapp/view/onboarding/widgets/marvel_button.dart';
import 'widgets/first_page.dart';
import 'widgets/four_step.dart';
import 'widgets/second_page.dart';
import 'widgets/third_page.dart';

class PaymentView extends StatelessWidget {
  const PaymentView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BlocBuilder<RegisterCubit, RegisterState>(
        builder: (context, state) {
          return MarvelButton(state,
              text: "Contiune",
              isSelected: state.isWhich != null, onTap: () async {
            context.read<RegisterCubit>().contiuneButton();
            if (state.index == 4) {
              var credentials =
                  await context.read<AuthRepository>().signUp(state.userModel!);

              if (credentials != null) {
                // ignore: use_build_context_synchronously
                context.read<AppCubit>().login();
              }
            }
          });
        },
      ),
      appBar: AppBar(
        centerTitle: true,
        title: SizedBox(
            height: 55,
            child: BlocBuilder<RegisterCubit, RegisterState>(
              builder: (context, state) {
                return appBarStep(context, state);
              },
            )),
      ),
      body: Center(child: BlocBuilder<RegisterCubit, RegisterState>(
        builder: (context, state) {
          List<Widget> stepsScreen = [
            FirstStep( state: state),
            SecondStep(state: state),
            ThirdStep(state: state),
            FourStep(state: state)
          ];
          return stepsScreen[state.index! - 1];
        },
      )),
    );
  }

  Row appBarStep(BuildContext context, RegisterState state) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        topNumberButton(context, 1, state.pins ?? [1]),
        lineWidget(context, 1, state.pins ?? [1]),
        topNumberButton(context, 2, state.pins ?? [1]),
        lineWidget(context, 2, state.pins ?? [1]),
        topNumberButton(context, 3, state.pins ?? [1]),
      ],
    );
  }

  Container lineWidget(BuildContext context, int text, List<int> index) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 2),
      height: 5,
      decoration: BoxDecoration(
          color: index.contains(text)
              ? context.getPrimaryColor()
              : context.getPrimaryColor().withOpacity(0.3),
          borderRadius: BorderRadius.circular(80)),
      width: 50,
    );
  }

  Container topNumberButton(BuildContext context, int text, List<int> index) {
    return Container(
      height: 27,
      width: 27,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: index.contains(text)
              ? context.getPrimaryColor()
              : context.getPrimaryColor().withOpacity(0.3)),
      child: Center(
          child: Text("${text}",
              style: context
                  .getTextTheme()
                  .labelMedium!
                  .copyWith(fontWeight: FontWeight.bold))),
    );
  }
}





class ChangeLine extends StatelessWidget {
  const ChangeLine({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
              "${context.read<RegisterCubit>().payment[0].payment_name}  ${context.read<RegisterCubit>().payment[0].payment_price} /Month",
              style: context.getTextTheme().labelLarge),
        ),
        Text("  Change",
            style: context
                .getTextTheme()
                .labelLarge!
                .copyWith(color: context.getPrimaryColor())),
      ],
    );
  }
}





